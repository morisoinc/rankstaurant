part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState() = _UserState;

  factory UserState.initial() => const UserState();

  factory UserState.loaded(User user) = _Loaded;
  factory UserState.fail(UserFailure failure) = _Fail;
}
