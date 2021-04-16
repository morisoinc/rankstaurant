import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/core/failures.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/core/value_validators.dart';

class ReviewBody extends ValueObject<String> {
  factory ReviewBody(String input) {
    return ReviewBody._(validateReviewBody(input));
  }

  const ReviewBody._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class ReviewRating extends ValueObject<int> {
  factory ReviewRating(int input) {
    return ReviewRating._(validateReviewRating(input));
  }

  const ReviewRating._(this.value);

  @override
  final Either<ValueFailure<int>, int> value;
}
