part of 'restaurants_bloc.dart';

@freezed
abstract class RestaurantsEvent with _$RestaurantsEvent {
  const factory RestaurantsEvent.watchAll() = _WatchAll;
  const factory RestaurantsEvent.watchOwn() = _WatchOwn;
  const factory RestaurantsEvent.restaurantsReceived(
    Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants,
  ) = _RestaurantsReceived;
}
