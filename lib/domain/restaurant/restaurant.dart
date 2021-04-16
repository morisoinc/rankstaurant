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
    required RestaurantRating latestRating,
    required int numberOfRatings,
    required int sumOfRatings,
  }) = _Restaurant;

  const Restaurant._();

  factory Restaurant.empty() => Restaurant(
        id: UniqueId(),
        name: RestaurantName(''),
        owner: UniqueId(),
        averageRating: RestaurantRating(-1),
        highestRating: RestaurantRating(-1),
        lowestRating: RestaurantRating(-1),
        latestRating: RestaurantRating(-1),
        numberOfRatings: 0,
        sumOfRatings: 0,
      );

  // * downside of getters: bad data can be generated.
  // * the best way to handle this is to create a value object for each field
  // * along with it's validator.
  @override
  int get numberOfRatings;
  @override
  int get sumOfRatings;

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(owner.failureOrUnit)
        .andThen(averageRating.failureOrUnit)
        .andThen(highestRating.failureOrUnit)
        .andThen(lowestRating.failureOrUnit)
        .andThen(latestRating.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
