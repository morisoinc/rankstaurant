part of 'restaurant_self_bloc.dart';

@freezed
abstract class RestaurantSelfEvent with _$RestaurantSelfEvent {
  const factory RestaurantSelfEvent.initialized(
      Option<Restaurant> restaurantOption) = _Initialized;
  const factory RestaurantSelfEvent.loadReviews() = _LoadReviews;
}
