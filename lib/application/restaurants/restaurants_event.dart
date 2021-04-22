part of 'restaurants_bloc.dart';

@freezed
abstract class RestaurantsEvent with _$RestaurantsEvent {
  const factory RestaurantsEvent.watchAll({required int? ratingFilter}) =
      _WatchAll;
  const factory RestaurantsEvent.watchOwn({required int? ratingFilter}) =
      _WatchOwn;
  const factory RestaurantsEvent.restaurantsReceived(
    Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants,
  ) = _RestaurantsReceived;
}
