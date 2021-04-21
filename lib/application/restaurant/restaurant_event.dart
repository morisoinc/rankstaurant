part of 'restaurant_bloc.dart';

@freezed
abstract class RestaurantEvent with _$RestaurantEvent {
  const factory RestaurantEvent.initialized(
      Option<Restaurant> restaurantOption) = _Initialized;
  const factory RestaurantEvent.watch(Restaurant restaurant) = _Watch;
  const factory RestaurantEvent.received(
      Either<RestaurantFailure, Restaurant> failureOrRestaurant) = _Received;
}
