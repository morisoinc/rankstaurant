import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rankstaurant/domain/user/i_user_repository.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:rankstaurant/domain/user/user_failure.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userRepository) : super(UserState.initial());

  final IUserRepository userRepository;

  StreamSubscription<Either<UserFailure, User>>? _subscription;

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(
      watchSelf: (e) async* {
        await _subscription?.cancel();
        _subscription = userRepository.watchSelf().listen(
              (failureOrUser) => add(UserEvent.received(failureOrUser)),
            );
      },
      received: (e) async* {
        yield e.failureOrUser
            .fold((l) => UserState.fail(l), (user) => UserState.loaded(user));
      },
    );
  }
}
