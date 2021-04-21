part of 'users_bloc.dart';

@freezed
abstract class UsersEvent with _$UsersEvent {
  const factory UsersEvent.watchAll() = _WatchAll;
  const factory UsersEvent.usersReceived(
      Either<UserFailure, KtList<User>> failureOrUsers) = _UsersReceived;
}
