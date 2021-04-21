import 'package:auto_route/annotations.dart';
import 'package:rankstaurant/presentation/auth/sign_in_page.dart';
import 'package:rankstaurant/presentation/restaurant/restaurant_page.dart';
import 'package:rankstaurant/presentation/restaurants/restaurants_page.dart';
import 'package:rankstaurant/presentation/splash/splash_page.dart';
import 'package:rankstaurant/presentation/user/user_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RestaurantsPage),
    MaterialRoute(page: RestaurantPage),
    MaterialRoute(page: UserPage),
  ],
)
class $AppRouter {}
