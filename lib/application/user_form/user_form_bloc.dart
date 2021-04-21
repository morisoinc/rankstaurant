import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rankstaurant/domain/user/i_user_repository.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:rankstaurant/domain/user/user_failure.dart';
import 'package:rankstaurant/domain/user/value_objects.dart';

part 'user_form_event.dart';
part 'user_form_state.dart';
part 'user_form_bloc.freezed.dart';

@injectable
class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  UserFormBloc(this.userRepository) : super(UserFormState.initial());

  final IUserRepository userRepository;

  @override
  Stream<UserFormState> mapEventToState(
    UserFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialUserOption.fold(
          () => state,
          (user) => state.copyWith(user: user),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            email: UserEmail(
              e.emailStr,
              isInitial: false,
            ),
          ),
        );
      },
      roleChanged: (e) async* {
        yield state.copyWith(
          user: state.user.copyWith(
            role: UserRole(e.roleStr),
          ),
        );
      },
      saveUserPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          userFailureOrSuccessOption: none(),
        );

        Either<UserFailure, Unit> failureOrSuccess;

        if (state.user.failureOption.isNone()) {
          failureOrSuccess = await userRepository.create(state.user);
        } else {
          failureOrSuccess = left(const UserFailure.unexpected());
        }

        yield state.copyWith(
            isSubmitting: false,
            userFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      deleteUserPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          userFailureOrSuccessOption: none(),
        );

        final Either<UserFailure, Unit> failureOrSuccess =
            await userRepository.delete(state.user);

        yield state.copyWith(
          isSubmitting: false,
          userFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
