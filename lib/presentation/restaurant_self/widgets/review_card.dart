import 'package:flutter/material.dart';
import 'package:rankstaurant/domain/review/review.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard(this.review);

  final Review review;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(review.reviewBody.getOrCrash())),
            Row(
              children: [
                Column(
                  children: const [
                    SizedBox(height: 2),
                    Icon(Icons.star),
                  ],
                ),
                const SizedBox(width: 2),
                Text('${review.reviewRating.getOrCrash()}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
