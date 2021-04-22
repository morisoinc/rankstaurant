part of 'restaurants_filter_bloc.dart';

@freezed
abstract class RestaurantsFilterState with _$RestaurantsFilterState {
  const factory RestaurantsFilterState({required int? ratingFilter}) =
      _RestaurantsFilterState;

  factory RestaurantsFilterState.initial() =>
      const RestaurantsFilterState(ratingFilter: null);
}
