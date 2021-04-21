part of 'restaurant_bloc.dart';

@freezed
abstract class RestaurantState with _$RestaurantState {
  const factory RestaurantState({required Restaurant restaurant}) =
      _RestaurantState;

  factory RestaurantState.initial() => RestaurantState(
        restaurant: Restaurant.empty(),
      );

  factory RestaurantState.loaded(Restaurant restaurant) = _Loaded;
  factory RestaurantState.fail(RestaurantFailure failure) = _Fail;
}
