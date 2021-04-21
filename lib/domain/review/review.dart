import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/core/failures.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/review/value_objects.dart';

part 'review.freezed.dart';

@freezed
abstract class Review with _$Review {
  const factory Review({
    required UniqueId id,
    required ReviewBody body,
    required ReviewRating rating,
    required ReviewResponse response,
    required bool archived,
    required DateTime createdAt,
  }) = _Review;

  const Review._();

  factory Review.empty() => Review(
        id: UniqueId(),
        body: ReviewBody(''),
        rating: ReviewRating(0, isInitial: true),
        response: ReviewResponse(''),
        archived: false,
        createdAt: DateTime.now(),
      );

  Option<ValueFailure<dynamic>> get failureOrOption {
    return body.failureOrUnit
        .andThen(rating.failureOrUnit)
        .andThen(response.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }
}
