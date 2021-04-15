import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurant_self/restaurant_self_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/injection.dart';

class RestaurantSelfPage extends StatelessWidget {
  const RestaurantSelfPage({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RestaurantSelfBloc>()
        ..add(RestaurantSelfEvent.initialized(optionOf(restaurant))),
      child: BlocConsumer<RestaurantSelfBloc, RestaurantSelfState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        state.restaurant.name.getOrCrash(),
                        style: Theme.of(context).textTheme.headline4,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
