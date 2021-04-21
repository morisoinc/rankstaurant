import 'package:flutter/material.dart';

class ErrorReviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Text('Error loading review 😰'),
      ),
    );
  }
}
