import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_bloc.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/error_restaurant.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/load_fail.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/restaurant_cart.dart';

class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantsBloc, RestaurantsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          loaded: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final restaurant = state.restaurants[index];
                if (restaurant.failureOption.isSome()) {
                  return ErrorRestaurantCard();
                } else {
                  return RestaurantCard(restaurant: restaurant);
                }
              },
              itemCount: state.restaurants.size,
            );
          },
          fail: (state) {
            return LoadFail();
          },
        );
      },
    );
  }
}
