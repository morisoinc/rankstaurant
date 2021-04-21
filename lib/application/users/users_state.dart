part of 'users_bloc.dart';

@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loading() = _Loading;
  const factory UsersState.loaded(KtList<User> users) = _Loaded;
  const factory UsersState.fail(UserFailure failure) = _Failure;
}
