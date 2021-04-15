import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(RestaurantSelfRoute(restaurant: restaurant));
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text(restaurant.name.getOrCrash())),
              Row(
                children: [
                  Column(
                    children: const [
                      SizedBox(height: 2),
                      Icon(Icons.star),
                    ],
                  ),
                  const SizedBox(width: 2),
                  Text(restaurant.averageRating.getOrCrash().toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
