import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/auth/auth_bloc.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

import '../../global/theme.dart' as theme;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
      ],
      child: MaterialApp.router(
        title: 'rankstaurant',
        theme: theme.buildTheme(theme: theme.Theme.lightBrown),
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
