import 'package:flutter/material.dart';

class ErrorReviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
        child: Text('Error loading review 😰'),
      ),
    );
  }
}
