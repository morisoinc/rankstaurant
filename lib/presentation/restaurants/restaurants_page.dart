import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rankstaurant/application/auth/auth_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_filter/restaurants_filter_bloc.dart';
import 'package:rankstaurant/application/user/user_bloc.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/global/widgets/r_bottom_sheet.dart';
import 'package:rankstaurant/global/widgets/r_container.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/main.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/restaurant_create_bottom_sheet.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/restaurants_filter_bottom_sheet.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/restaurants_list.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';
import 'package:rankstaurant/presentation/users/users_page.dart';

class RestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (context) =>
              getIt<UserBloc>()..add(const UserEvent.watchSelf()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              loadingOverlay.hide();
              state.maybeMap(
                  unauthenticated: (_) {
                    context.router.popUntilRoot();
                    context.router.replace(const SignInRoute());
                  },
                  orElse: () {});
            },
          ),
          BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              state.map(
                (value) {},
                loaded: (state) {
                  if (state.user.archived) {
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  } else {
                    if (SettingsHelper.userRole().toString() !=
                        state.user.role.getOrCrash()) {
                      SettingsHelper.setUserRole(state.user.role.getOrCrash());
                      context
                          .read<RestaurantsBloc>()
                          .add(_watchEvent(ratingFilter: null));
                    }
                  }
                },
                fail: (_) {},
              );
            },
          ),
        ],
        child: Scaffold(
          floatingActionButton: _buildFabs(context),
          body: RContainer(
            headerTitle: 'Restaurants',
            leftIcon: const Icon(
              Icons.logout,
              size: 18,
            ),
            leftAction: () =>
                context.read<AuthBloc>().add(const AuthEvent.signedOut()),
            rightIcon: _buildRightIcon(),
            rightAction: _buildRightAction(context),
            body: RestaurantsList(),
          ),
        ),
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

  Widget _buildFabs(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildFilterFab(context),
        _buildAddFab(context),
      ],
    );
  }

  Widget _buildFilterFab(BuildContext context) {
    return BlocConsumer<RestaurantsFilterBloc, RestaurantsFilterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return FloatingActionButton(
          heroTag: 'filter-restaurants',
          onPressed: () =>
              RBottomSheet.show(context, RestaurantsFilterBottomSheet()),
          child: Icon(
            state.ratingFilter == null
                ? Icons.filter_alt_outlined
                : Icons.filter_alt,
            size: 24,
          ),
        );
      },
    );
  }

  Widget _buildAddFab(BuildContext context) {
    switch (SettingsHelper.userRole()) {
      case Role.owner:
        return Container(
          margin: const EdgeInsets.only(top: 8),
          child: FloatingActionButton(
            heroTag: 'add-restaurant',
            onPressed: () =>
                RBottomSheet.show(context, RestaurantCreateBottomSheet()),
            child: const Icon(Icons.add, size: 24),
          ),
        );
      case Role.admin:
      case Role.regular:
      default:
        return Container();
    }
  }

  Icon? _buildRightIcon() {
    if (SettingsHelper.userRole() == Role.admin) {
      return const Icon(Icons.person, size: 18);
    }
    return null;
  }

  Function()? _buildRightAction(BuildContext context) {
    if (SettingsHelper.userRole() == Role.admin) {
      return () => RBottomSheet.show(context,
          RBottomSheet(title: 'Users', context: context, child: UsersPage()));
    }
    return null;
  }
}
