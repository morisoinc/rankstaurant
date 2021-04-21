import 'package:flutter/material.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

class UserCard extends StatelessWidget {
  const UserCard({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () {
          context.router.push(UserRoute(user: user));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(user.email.getOrCrash()),
              Text(user.role.getOrCrash() == 'regular'
                  ? 'consumer'
                  : user.role.getOrCrash()),
            ],
          ),
        ),
      ),
    );
  }
}
