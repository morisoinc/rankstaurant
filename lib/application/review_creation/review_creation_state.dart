part of 'review_creation_bloc.dart';

@freezed
abstract class ReviewCreationState with _$ReviewCreationState {
  const factory ReviewCreationState({
    required UniqueId id,
    required ReviewBody body,
    required ReviewRating rating,
    required bool isSubmitting,
    required Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption,
  }) = _ReviewCreationState;

  factory ReviewCreationState.initial() => ReviewCreationState(
        id: UniqueId(),
        body: ReviewBody(''),
        rating: ReviewRating(0),
        isSubmitting: false,
        reviewFailureOrSuccessOption: none(),
      );
}
