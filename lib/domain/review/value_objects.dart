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
  factory ReviewRating(int input, {required bool isInitial}) {
    return ReviewRating._(validateReviewRating(input, isInitial: isInitial));
  }

  const ReviewRating._(this.value);

  @override
  final Either<ValueFailure<int>, int> value;
}

class ReviewResponse extends ValueObject<String> {
  factory ReviewResponse(String input) {
    return ReviewResponse._(validateReviewResponse(input));
  }

  const ReviewResponse._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
