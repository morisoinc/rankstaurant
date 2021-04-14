import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/core/failures.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/restaurant/value_objects.dart';

part 'restaurant.freezed.dart';

@freezed
abstract class Restaurant implements _$Restaurant {
  factory Restaurant({
    required UniqueId id,
    required RestaurantName name,
    required UniqueId owner,
    required RestaurantRating averageRating,
    required RestaurantRating highestRating,
    required RestaurantRating lowestRating,
  }) = _Restaurant;

  const Restaurant._();

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(owner.failureOrUnit)
        .andThen(averageRating.failureOrUnit)
        .andThen(highestRating.failureOrUnit)
        .andThen(lowestRating.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
