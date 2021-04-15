part of 'restaurant_self_bloc.dart';

@freezed
abstract class RestaurantSelfState with _$RestaurantSelfState {
  const factory RestaurantSelfState({required Restaurant restaurant}) =
      _RestaurantSelfState;

  factory RestaurantSelfState.initial() => RestaurantSelfState(
        restaurant: Restaurant.empty(),
      );
}
