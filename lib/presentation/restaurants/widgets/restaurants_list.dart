import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_bloc.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/error_restaurant.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/load_fail.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/restaurant_card.dart';

class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RestaurantsBloc, RestaurantsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => const Center(child: CircularProgressIndicator()),
          loaded: (state) {
            if (state.restaurants.isEmpty()) {
              return const Center(
                child: Text('No restaurants!'),
              );
            }
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.restaurants.size,
              itemBuilder: (context, index) {
                final restaurant = state.restaurants[index];
                if (restaurant.failureOrOption.isSome()) {
                  return ErrorRestaurantCard();
                } else {
                  return RestaurantCard(restaurant: restaurant);
                }
              },
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
