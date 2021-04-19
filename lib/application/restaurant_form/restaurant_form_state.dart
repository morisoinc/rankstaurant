part of 'restaurant_form_bloc.dart';

@freezed
abstract class RestaurantFormState with _$RestaurantFormState {
  const factory RestaurantFormState({
    required Restaurant restaurant,
    required bool isEditing,
    required bool isSubmitting,
    required Option<Either<RestaurantFailure, Unit>>
        restaurantFailureOrSuccessOption,
  }) = _RestaurantCreationState;

  factory RestaurantFormState.initial() => RestaurantFormState(
        restaurant: Restaurant.empty(),
        isEditing: false,
        isSubmitting: false,
        restaurantFailureOrSuccessOption: none(),
      );
}
