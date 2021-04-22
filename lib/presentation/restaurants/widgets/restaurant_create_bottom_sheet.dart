import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurant_form/restaurant_form_bloc.dart';
import 'package:rankstaurant/global/widgets/r_bottom_sheet.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/main.dart';

class RestaurantCreateBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantFormBloc>(
      create: (context) => getIt<RestaurantFormBloc>(),
      child: BlocConsumer<RestaurantFormBloc, RestaurantFormState>(
        listener: (context, state) {
          state.restaurantFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                loadingOverlay.hide();
                FlushbarHelper.createError(
                  message: failure.map(
                    emptyName: (_) => "Name can't be empty",
                    longName: (_) => 'Name must be shorter',
                    unexpected: (_) => 'Unexpected error',
                  ),
                ).show(context);
              },
              (_) {
                loadingOverlay.hide();
                Navigator.pop(context);
              },
            ),
          );
        },
        builder: (context, state) {
          return RBottomSheet(
            title: 'Create a Restaurant',
            context: context,
            saveText: 'Create',
            saveAction: () {
              loadingOverlay.show(context);
              FocusScope.of(context).unfocus();
              context
                  .read<RestaurantFormBloc>()
                  .add(const RestaurantFormEvent.saveRestaurantPressed());
            },
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: TextFormField(
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
            ),
          );
        },
      ),
    );
  }
}
