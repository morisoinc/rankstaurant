import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_failure.freezed.dart';

@freezed
abstract class ReviewFailure with _$ReviewFailure {
  const factory ReviewFailure.longReviewResponse() = _LongReviewResponse;
  const factory ReviewFailure.emptyRating() = _EmptyRating;
  const factory ReviewFailure.longReviewBody() = _LongReviewBody;
  const factory ReviewFailure.unexpected() = _Unexpected;
}
