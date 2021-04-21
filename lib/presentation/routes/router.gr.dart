// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../../domain/restaurant/restaurant.dart' as _i7;
import '../../domain/user/user.dart' as _i8;
import '../auth/sign_in_page.dart' as _i3;
import '../restaurant/restaurant_page.dart' as _i5;
import '../restaurants/restaurants_page.dart' as _i4;
import '../splash/splash_page.dart' as _i2;
import '../user/user_page.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SplashPage());
    },
    SignInRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.SignInPage());
    },
    RestaurantsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.RestaurantsPage());
    },
    RestaurantRoute.name: (entry) {
      var args = entry.routeData.argsAs<RestaurantRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry, child: _i5.RestaurantPage(restaurant: args.restaurant));
    },
    UserRoute.name: (entry) {
      var args = entry.routeData.argsAs<UserRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry, child: _i6.UserPage(user: args.user));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(RestaurantsRoute.name, path: '/restaurants-page'),
        _i1.RouteConfig(RestaurantRoute.name, path: '/restaurant-page'),
        _i1.RouteConfig(UserRoute.name, path: '/user-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class RestaurantsRoute extends _i1.PageRouteInfo {
  const RestaurantsRoute() : super(name, path: '/restaurants-page');

  static const String name = 'RestaurantsRoute';
}

class RestaurantRoute extends _i1.PageRouteInfo<RestaurantRouteArgs> {
  RestaurantRoute({required _i7.Restaurant restaurant})
      : super(name,
            path: '/restaurant-page',
            args: RestaurantRouteArgs(restaurant: restaurant));

  static const String name = 'RestaurantRoute';
}

class RestaurantRouteArgs {
  const RestaurantRouteArgs({required this.restaurant});

  final _i7.Restaurant restaurant;
}

class UserRoute extends _i1.PageRouteInfo<UserRouteArgs> {
  UserRoute({required _i8.User user})
      : super(name, path: '/user-page', args: UserRouteArgs(user: user));

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({required this.user});

  final _i8.User user;
}
