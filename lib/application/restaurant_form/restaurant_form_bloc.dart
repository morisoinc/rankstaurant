import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/core/value_validators.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';
import 'package:rankstaurant/domain/restaurant/value_objects.dart';

part 'restaurant_form_event.dart';
part 'restaurant_form_state.dart';

part 'restaurant_form_bloc.freezed.dart';

@injectable
class RestaurantFormBloc
    extends Bloc<RestaurantFormEvent, RestaurantFormState> {
  RestaurantFormBloc(this.restaurantRepository)
      : super(RestaurantFormState.initial());

  final IRestaurantRepository restaurantRepository;

  @override
  Stream<RestaurantFormState> mapEventToState(
    RestaurantFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialRestaurantOption.fold(
          () => state,
          (restaurant) => state.copyWith(
            restaurant: restaurant,
            isEditing: true,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          restaurant: state.restaurant
              .copyWith(name: RestaurantName(e.nameStr, isInitial: false)),
          restaurantFailureOrSuccessOption: none(),
        );
      },
      saveRestaurantPressed: (e) async* {
        Either<RestaurantFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          restaurantFailureOrSuccessOption: none(),
        );

        if (state.restaurant.failureOrOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await restaurantRepository.update(state.restaurant)
              : await restaurantRepository.create(state.restaurant);
        } else {
          failureOrSuccess = state.restaurant.failureOrOption.fold(
              () => right(unit),
              (a) => a.maybeMap(
                  longRestaurantName: (b) =>
                      left(const RestaurantFailure.longName()),
                  emptyRestaurantName: (c) =>
                      left(const RestaurantFailure.emptyName()),
                  orElse: () => right(unit)));
        }

        yield state.copyWith(
          isSubmitting: false,
          restaurantFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleteRestaurantPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          restaurantFailureOrSuccessOption: none(),
        );

        final Either<RestaurantFailure, Unit> failureOrSuccess =
            await restaurantRepository.delete(state.restaurant);

        yield state.copyWith(
          isSubmitting: false,
          restaurantFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
