import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final averageRating = restaurant.averageRating.getOrCrash();
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(RestaurantSelfRoute(restaurant: restaurant));
        },
        onLongPress: () {},
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text(restaurant.name.getOrCrash())),
              Builder(builder: (context) {
                if (averageRating > -1) {
                  return Row(
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
                  );
                } else {
                  return Text(
                    'New!',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: kYellow),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }

  void showEditDeleteRestaurantDialog(
      BuildContext context, Restaurant restaurant) {
    if (SettingsHelper.userRole() != Role.admin) {
      return;
    }
  }
}
