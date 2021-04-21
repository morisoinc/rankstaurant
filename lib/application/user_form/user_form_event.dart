part of 'user_form_bloc.dart';

@freezed
abstract class UserFormEvent with _$UserFormEvent {
  const factory UserFormEvent.initialized(Option<User> initialUserOption) =
      _Initialized;
  const factory UserFormEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory UserFormEvent.roleChanged(String roleStr) = _RoleChanged;
  const factory UserFormEvent.saveUserPressed() = _SaveUserPressed;
  const factory UserFormEvent.deleteUserPressed() = _DeleteUserPressed;
}
