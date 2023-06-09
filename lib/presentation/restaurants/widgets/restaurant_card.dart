import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurant_form/restaurant_form_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/global/widgets/r_bottom_sheet.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/main.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final averageRating = restaurant.averageRating.getOrCrash();
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () {
          context.router.push(RestaurantRoute(restaurant: restaurant));
        },
        onLongPress: () => showEditDeleteRestaurantDialog(context, restaurant),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text(restaurant.name.getOrCrash())),
              Builder(builder: (context) {
                if (averageRating > -1) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
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
                      ),
                      _buildPendingReviewsSection(
                          restaurant.pendingReviews, context),
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

  Widget _buildPendingReviewsSection(int pendingReviews, BuildContext context) {
    if (SettingsHelper.userRole() == Role.regular || pendingReviews == 0) {
      return Container();
    } else {
      return Container(
        margin: const EdgeInsets.only(top: 4),
        child: Row(
          children: [
            Column(
              children: const [
                SizedBox(height: 2),
                Icon(
                  Icons.warning,
                  color: kYellow,
                ),
              ],
            ),
            const SizedBox(width: 2),
            Text(pendingReviews.toString(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: kYellow)),
          ],
        ),
      );
    }
  }

  void showEditDeleteRestaurantDialog(
      BuildContext context, Restaurant restaurant) {
    if (SettingsHelper.userRole() != Role.admin) {
      return;
    }

    final textEditingController = TextEditingController();

    bool textEditingControllerInitialized = false;

    RBottomSheet.show(
      context,
      BlocProvider<RestaurantFormBloc>(
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
                loadingOverlay.hide();
                FlushbarHelper.createError(
                  message: failure.map(
                    longName: (_) => 'Name must be shorter',
                    emptyName: (_) => "Name can't be empty",
                    unexpected: (_) => 'Unexpected error',
                  ),
                ).show(context);
              }, (_) {
                loadingOverlay.hide();
                Navigator.pop(context);
              }),
            );
          },
          builder: (context, state) {
            return RBottomSheet(
              title: 'Edit Restaurant',
              context: context,
              saveText: 'Save',
              saveAction: () {
                loadingOverlay.show(context);
                FocusScope.of(context).unfocus();
                context
                    .read<RestaurantFormBloc>()
                    .add(const RestaurantFormEvent.saveRestaurantPressed());
              },
              deleteText: 'archive',
              deleteAction: () {
                loadingOverlay.show(context);
                FocusScope.of(context).unfocus();
                context
                    .read<RestaurantFormBloc>()
                    .add(const RestaurantFormEvent.deleteRestaurantPressed());
              },
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: textEditingController,
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
                              emptyRestaurantName: (_) => "Name can't be empty",
                              longRestaurantName: (_) => 'Name must be shorter',
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
      ),
    );
  }
}
