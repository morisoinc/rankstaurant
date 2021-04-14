part of 'restaurants_bloc.dart';

@freezed
abstract class RestaurantsState with _$RestaurantsState {
  const factory RestaurantsState.initial() = _Initial;
  const factory RestaurantsState.loading() = _Loading;
  const factory RestaurantsState.loaded(KtList<Restaurant> restaurants) =
      _Loaded;
  const factory RestaurantsState.fail(RestaurantFailure failure) = _Failure;
}
