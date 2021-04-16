part of 'review_creation_bloc.dart';

@freezed
abstract class ReviewCreationEvent with _$ReviewCreationEvent {
  const factory ReviewCreationEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory ReviewCreationEvent.ratingChanged(int ratingInt) =
      _RatingChanged;
  const factory ReviewCreationEvent.leaveReviewPressed(Restaurant restaurant) =
      _LeaveReviewPressed;
}
