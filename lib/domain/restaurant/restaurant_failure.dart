import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_failure.freezed.dart';

@freezed
abstract class RestaurantFailure with _$RestaurantFailure {
  const factory RestaurantFailure.emptyName() = _EmptyName;
  const factory RestaurantFailure.longName() = _LongName;
  const factory RestaurantFailure.unexpected() = _Unexpected;
}
