import 'package:flutter/material.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(restaurant.name.getOrCrash()),
              const Spacer(),
              Text('$restaurant.averageRating.getOrCrash()'),
            ],
          ),
        ),
      ),
    );
  }
}
