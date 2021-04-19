import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurant_form/restaurant_form_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final averageRating = restaurant.averageRating.getOrCrash();
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(RestaurantSelfRoute(restaurant: restaurant));
        },
        onLongPress: () => showEditDeleteRestaurantDialog(context, restaurant),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text(restaurant.name.getOrCrash())),
              Builder(builder: (context) {
                if (averageRating > -1) {
                  return Row(
                    children: [
                      Column(
                        children: const [
                          SizedBox(height: 2),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(width: 2),
                      Text(restaurant.averageRating
                          .getOrCrash()
                          .toStringAsFixed(2)),
                    ],
                  );
                } else {
                  return Text(
                    'New!',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: kYellow),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }

  void showEditDeleteRestaurantDialog(
      BuildContext context, Restaurant restaurant) {
    if (SettingsHelper.userRole() != Role.admin) {
      return;
    }

    final textEditingController = TextEditingController();

    bool textEditingControllerInitialized = false;

    showDialog(
      context: context,
      builder: (_) => BlocProvider<RestaurantFormBloc>(
        create: (context) => getIt<RestaurantFormBloc>()
          ..add(RestaurantFormEvent.initialized(optionOf(restaurant))),
        child: BlocConsumer<RestaurantFormBloc, RestaurantFormState>(
          listener: (context, state) {
            if (!textEditingControllerInitialized) {
              textEditingController.text = state.restaurant.name.getOrCrash();
              textEditingControllerInitialized = true;
            }
            state.restaurantFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    unexpected: (_) => 'Unexpected error',
                  ),
                ).show(context);
              }, (_) {
                Navigator.pop(context);
              }),
            );
          },
          builder: (context, state) {
            return AlertDialog(
              title: const Text('Edit Restaurant'),
              content: Builder(
                builder: (context) {
                  final width = MediaQuery.of(context).size.width;
                  return Form(
                    child: SizedBox(
                      width: width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: textEditingController,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            decoration: const InputDecoration(hintText: 'Name'),
                            onChanged: (value) => context
                                .read<RestaurantFormBloc>()
                                .add(RestaurantFormEvent.nameChanged(value)),
                            validator: (_) => context
                                .read<RestaurantFormBloc>()
                                .state
                                .restaurant
                                .name
                                .value
                                .fold(
                                  (f) => f.maybeMap(
                                    longRestaurantName: (_) =>
                                        'Name must be shorter',
                                    orElse: () => null,
                                  ),
                                  (_) => null,
                                ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context.read<RestaurantFormBloc>().add(
                          const RestaurantFormEvent.deleteRestaurantPressed());
                    },
                    child: const Text('Archive')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel')),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context.read<RestaurantFormBloc>().add(
                          const RestaurantFormEvent.saveRestaurantPressed());
                    },
                    child: const Text('Save')),
              ],
              shape: const RoundedRectangleBorder(),
            );
          },
        ),
      ),
    );
  }
}
