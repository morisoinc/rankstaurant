import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/auth/auth_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_filter/restaurants_filter_bloc.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
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
        BlocProvider<RestaurantsBloc>(
          create: (context) =>
              getIt<RestaurantsBloc>()..add(_watchEvent(ratingFilter: null)),
        ),
        BlocProvider<RestaurantsFilterBloc>(
          create: (context) => getIt<RestaurantsFilterBloc>(),
        ),
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

  RestaurantsEvent _watchEvent({required int? ratingFilter}) {
    switch (SettingsHelper.userRole()) {
      case Role.owner:
        return RestaurantsEvent.watchOwn(ratingFilter: ratingFilter);
      case Role.admin:
      case Role.regular:
      default:
        return RestaurantsEvent.watchAll(ratingFilter: ratingFilter);
    }
  }
}
