import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rankstaurant/domain/user/i_user_repository.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:rankstaurant/domain/user/user_failure.dart';

part 'users_event.dart';
part 'users_state.dart';
part 'users_bloc.freezed.dart';

@injectable
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(this.userRepository) : super(const UsersState.initial());

  final IUserRepository userRepository;

  StreamSubscription<Either<UserFailure, KtList<User>>>? _subscription;

  @override
  Stream<UsersState> mapEventToState(
    UsersEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const UsersState.loading();
        await _subscription?.cancel();
        _subscription = userRepository.watchAll().listen(
              (failureOrUsers) => add(UsersEvent.usersReceived(failureOrUsers)),
            );
      },
      usersReceived: (e) async* {
        yield e.failureOrUsers.fold(
          (l) => UsersState.fail(l),
          (users) => UsersState.loaded(users),
        );
      },
    );
  }
}
