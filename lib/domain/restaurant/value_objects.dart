import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/core/failures.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/core/value_validators.dart';

class RestaurantName extends ValueObject<String> {
  factory RestaurantName(String input, {required bool isInitial}) {
    return RestaurantName._(
        validateRestaurantName(input, isInitial: isInitial));
  }

  const RestaurantName._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class RestaurantRating extends ValueObject<double> {
  factory RestaurantRating(double input) {
    return RestaurantRating._(validateRestaurantRating(input));
  }

  const RestaurantRating._(this.value);

  @override
  final Either<ValueFailure<double>, double> value;
}
