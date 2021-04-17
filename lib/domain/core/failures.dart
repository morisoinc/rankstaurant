import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.invalidUserRole({
    required String failedValue,
  }) = InvalidUserRole<T>;
  const factory ValueFailure.longRestaurantName({
    required String failedValue,
  }) = LongRestaurantName<T>;
  const factory ValueFailure.invalidRestaurantRating({
    required double failedValue,
  }) = InvalidRestaurantRating<T>;
  const factory ValueFailure.longReviewBody({
    required String failedValue,
  }) = LongReviewBody<T>;
  const factory ValueFailure.invalidRating({
    required int failedValue,
  }) = InvalidRating<T>;
  const factory ValueFailure.longReviewResponse({
    required String failedValue,
  }) = LongReviewResponse<T>;
}
