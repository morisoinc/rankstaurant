part of 'restaurants_filter_bloc.dart';

@freezed
abstract class RestaurantsFilterEvent with _$RestaurantsFilterEvent {
  const factory RestaurantsFilterEvent.filterChanged(
      {required int? ratingFilter}) = _FilterChanged;
}
