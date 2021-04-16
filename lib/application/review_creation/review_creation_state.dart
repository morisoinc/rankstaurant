part of 'review_creation_bloc.dart';

@freezed
abstract class ReviewCreationState with _$ReviewCreationState {
  const factory ReviewCreationState({
    required UniqueId id,
    required ReviewBody reviewBody,
    required ReviewRating reviewRating,
    required bool isSubmitting,
    required Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption,
  }) = _ReviewCreationState;

  factory ReviewCreationState.initial() => ReviewCreationState(
        id: UniqueId(),
        reviewBody: ReviewBody(''),
        reviewRating: ReviewRating(0),
        isSubmitting: false,
        reviewFailureOrSuccessOption: none(),
      );
}
