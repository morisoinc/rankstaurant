part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.watchSelf() = _WatchSelf;
  const factory UserEvent.received(Either<UserFailure, User> failureOrUser) =
      _Received;
}
