part of 'restaurant_creation_bloc.dart';

@freezed
abstract class RestaurantCreationState with _$RestaurantCreationState {
  const factory RestaurantCreationState({
    required UniqueId id,
    required RestaurantName restaurantName,
    required UniqueId owner,
    required bool isSubmitting,
    required Option<Either<RestaurantFailure, Unit>>
        restaurantFailureOrSuccessOption,
  }) = _RestaurantCreationState;

  factory RestaurantCreationState.initial(String ownerId) =>
      RestaurantCreationState(
        id: UniqueId(),
        restaurantName: RestaurantName(''),
        owner: UniqueId.fromUniqueString(ownerId),
        isSubmitting: false,
        restaurantFailureOrSuccessOption: none(),
      );
}
