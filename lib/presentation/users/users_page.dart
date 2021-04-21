import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/users/users_bloc.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/users/widgets/error_user.dart';
import 'package:rankstaurant/presentation/users/widgets/user_card.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<UsersBloc>()..add(const UsersEvent.watchAll()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<UsersBloc, UsersState>(
            listener: (context, state) {
              // TODO: implement listener
            },
          ),
        ],
        child: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              loaded: (state) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: state.users.size,
                    itemBuilder: (context, index) {
                      final user = state.users[index];
                      if (user.failureOption.isSome()) {
                        return ErrorUserCard();
                      } else {
                        return UserCard(user: user);
                      }
                    });
              },
              fail: (state) {
                return Container();
              },
            );
          },
        ),
      ),
    );
  }
}
