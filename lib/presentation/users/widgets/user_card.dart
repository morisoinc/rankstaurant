import 'package:flutter/material.dart';
import 'package:rankstaurant/domain/user/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onLongPress: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(user.email.getOrCrash()),
              Text(user.role.getOrCrash()),
            ],
          ),
        ),
      ),
    );
  }
}
