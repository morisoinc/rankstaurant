import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rankstaurant/application/auth/auth_bloc.dart';
import 'package:rankstaurant/application/restaurant_form/restaurant_form_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_bloc.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/global/widgets/r_container.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/restaurants_list.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

class RestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RestaurantsBloc>(
          create: (context) => getIt<RestaurantsBloc>()..add(_watchEvent()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  unauthenticated: (_) =>
                      context.router.replace(const SignInRoute()),
                  orElse: () {});
            },
          ),
        ],
        child: Scaffold(
          floatingActionButton: _buildFab(context),
          body: RContainer(
            headerTitle: 'Restaurants',
            headerContent: const SizedBox(height: 0, width: 0),
            // appBar: AppBar(
            //   title: const Text('Restaurants'),
            //   leading: IconButton(
            //     icon: const Icon(Icons.logout),
            //     onPressed: () {
            //       context.read<AuthBloc>().add(const AuthEvent.signedOut());
            //     },
            //   ),
            // ),
            body: RestaurantsList(),
          ),
        ),
      ),
    );
  }

  RestaurantsEvent _watchEvent() {
    switch (SettingsHelper.userRole()) {
      case Role.owner:
        return const RestaurantsEvent.watchOwn();
      case Role.admin:
      case Role.regular:
      default:
        return const RestaurantsEvent.watchAll();
    }
  }

  Widget _buildFab(BuildContext context) {
    switch (SettingsHelper.userRole()) {
      case Role.owner:
        return FloatingActionButton(
          onPressed: () => showCreateRestaurantDialog(context),
          child: const Icon(Icons.add, size: 24),
        );
      case Role.admin:
      case Role.regular:
      default:
        return Container();
    }
  }

  void showCreateRestaurantDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider<RestaurantFormBloc>(
        create: (context) => getIt<RestaurantFormBloc>(),
        child: BlocConsumer<RestaurantFormBloc, RestaurantFormState>(
          listener: (context, state) {
            state.restaurantFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    unexpected: (_) => 'Unexpected error',
                  ),
                ).show(context);
              }, (_) {
                Navigator.pop(context);
              }),
            );
          },
          builder: (context, state) {
            return AlertDialog(
              title: const Text('Create a Restaurant'),
              content: Form(
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Name'),
                  onChanged: (value) => context
                      .read<RestaurantFormBloc>()
                      .add(RestaurantFormEvent.nameChanged(value)),
                  validator: (_) => context
                      .read<RestaurantFormBloc>()
                      .state
                      .restaurant
                      .name
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          shortPassword: (_) => 'Name must be shorter',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel')),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context.read<RestaurantFormBloc>().add(
                          const RestaurantFormEvent.saveRestaurantPressed());
                    },
                    child: const Text('Create')),
              ],
              shape: const RoundedRectangleBorder(),
            );
          },
        ),
      ),
    );
  }
}
