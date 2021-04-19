part of 'review_form_bloc.dart';

@freezed
abstract class ReviewFormEvent with _$ReviewFormEvent {
  const factory ReviewFormEvent.initialized(Option<Review> initialReviewOption,
      Option<Restaurant> initialRestaurantOption) = _Initialized;
  const factory ReviewFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory ReviewFormEvent.ratingChanged(int ratingInt) = _RatingChanged;
  const factory ReviewFormEvent.responseChanged(String responseStr) =
      _ResponseChanged;
  const factory ReviewFormEvent.saveReviewPressed() = _SaveReviewPressed;
  const factory ReviewFormEvent.deleteReviewPressed() = _DeleteReviewPressed;
}
