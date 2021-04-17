part of 'review_response_bloc.dart';

@freezed
abstract class ReviewResponseEvent with _$ReviewResponseEvent {
  const factory ReviewResponseEvent.responseChanged(String responseStr) =
      _ResponseChanged;
  const factory ReviewResponseEvent.leaveResponsePressed(
      Review review, Restaurant restaurant) = _LeaveResponsePressed;
}
