part of 'restaurant_creation_bloc.dart';

@freezed
abstract class RestaurantCreationState with _$RestaurantCreationState {
  const factory RestaurantCreationState({
    required UniqueId id,
    required RestaurantName restaurantName,
    required UniqueId owner,
    required RestaurantRating averageRating,
    required RestaurantRating highestRating,
    required RestaurantRating lowestRating,
    required bool isSubmitting,
    required Option<Either<RestaurantFailure, Unit>>
        restaurantFailureOrSuccessOption,
  }) = _RestaurantCreationState;

  factory RestaurantCreationState.initial(String ownerId) =>
      RestaurantCreationState(
        id: UniqueId(),
        restaurantName: RestaurantName(''),
        owner: UniqueId.fromUniqueString(ownerId),
        averageRating: RestaurantRating(-1),
        highestRating: RestaurantRating(-1),
        lowestRating: RestaurantRating(-1),
        isSubmitting: false,
        restaurantFailureOrSuccessOption: none(),
      );
}
