part of 'user_form_bloc.dart';

@freezed
abstract class UserFormState with _$UserFormState {
  const factory UserFormState({
    required User user,
    required bool isSubmitting,
    required Option<Either<UserFailure, Unit>> userFailureOrSuccessOption,
  }) = _UserFormState;

  factory UserFormState.initial() => UserFormState(
        user: User.empty(),
        isSubmitting: false,
        userFailureOrSuccessOption: none(),
      );
}
