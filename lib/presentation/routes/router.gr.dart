// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../../domain/restaurant/restaurant.dart' as _i6;
import '../auth/sign_in_page.dart' as _i3;
import '../restaurant_self/restaurant_self_page.dart' as _i5;
import '../restaurants/restaurants_page.dart' as _i4;
import '../splash/splash_page.dart' as _i2;

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
    RestaurantSelfRoute.name: (entry) {
      var args = entry.routeData.argsAs<RestaurantSelfRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i5.RestaurantSelfPage(restaurant: args.restaurant));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(RestaurantsRoute.name, path: '/restaurants-page'),
        _i1.RouteConfig(RestaurantSelfRoute.name, path: '/restaurant-self-page')
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

class RestaurantSelfRoute extends _i1.PageRouteInfo<RestaurantSelfRouteArgs> {
  RestaurantSelfRoute({required _i6.Restaurant restaurant})
      : super(name,
            path: '/restaurant-self-page',
            args: RestaurantSelfRouteArgs(restaurant: restaurant));

  static const String name = 'RestaurantSelfRoute';
}

class RestaurantSelfRouteArgs {
  const RestaurantSelfRouteArgs({required this.restaurant});

  final _i6.Restaurant restaurant;
}
