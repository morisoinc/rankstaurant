part of 'review_response_bloc.dart';

@freezed
abstract class ReviewResponseState with _$ReviewResponseState {
  const factory ReviewResponseState({
    required ReviewResponse response,
    required bool isSubmitting,
    required Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption,
  }) = _ReviewResponseState;

  factory ReviewResponseState.initial() => ReviewResponseState(
        response: ReviewResponse(''),
        isSubmitting: false,
        reviewFailureOrSuccessOption: none(),
      );
}
