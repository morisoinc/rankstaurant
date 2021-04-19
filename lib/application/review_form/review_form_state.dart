part of 'review_form_bloc.dart';

@freezed
abstract class ReviewFormState with _$ReviewFormState {
  const factory ReviewFormState({
    required Review review,
    required Restaurant restaurant,
    required bool isEditing,
    required bool isSubmitting,
    required Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption,
  }) = _ReviewFormState;

  factory ReviewFormState.initial() => ReviewFormState(
        review: Review.empty(),
        restaurant: Restaurant.empty(),
        isEditing: false,
        isSubmitting: false,
        reviewFailureOrSuccessOption: none(),
      );
}
