import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/application/review_response/review_response_bloc.dart';
import 'package:rankstaurant/injection.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard(this.review, this.restaurant);

  final Review review;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onLongPress: () => onReviewLongPress(review, restaurant, context),
          child: Card(
            margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: Text(review.body.getOrCrash())),
                  Row(
                    children: [
                      Column(
                        children: const [
                          SizedBox(height: 2),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(width: 2),
                      Text('${review.rating.getOrCrash()}'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        ReviewResponse(review: review)
      ],
    );
  }
}

void onReviewLongPress(
    Review review, Restaurant restaurant, BuildContext context) {
  if (review.response.getOrCrash().isEmpty &&
      SettingsHelper.userRole() == Role.owner) {
    showRespondToReview(review, restaurant, context);
  }
}

void showRespondToReview(
    Review review, Restaurant restaurant, BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => BlocProvider<ReviewResponseBloc>(
      create: (context) => getIt<ReviewResponseBloc>(),
      child: BlocConsumer<ReviewResponseBloc, ReviewResponseState>(
        listener: (context, state) {
          state.reviewFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  unexpected: (_) => 'Unexpected error',
                ),
              ).show(context);
            }, (_) {
              Navigator.pop(context);
            }),
          );
        },
        builder: (context, state) {
          return AlertDialog(
            title: const Text('Respond to a review'),
            content: Builder(
              builder: (context) {
                final width = MediaQuery.of(context).size.width;
                return Form(
                  child: SizedBox(
                    width: width,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 16),
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          decoration:
                              const InputDecoration(hintText: 'Comment'),
                          onChanged: (value) => context
                              .read<ReviewResponseBloc>()
                              .add(ReviewResponseEvent.responseChanged(value)),
                          validator: (_) => context
                              .read<ReviewResponseBloc>()
                              .state
                              .response
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  longReviewBody: (_) =>
                                      'Response must be shorter',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context.read<ReviewResponseBloc>().add(
                        ReviewResponseEvent.leaveResponsePressed(
                            review, restaurant));
                  },
                  child: const Text('Leave')),
            ],
            shape: const RoundedRectangleBorder(),
          );
        },
      ),
    ),
  );
}

class ReviewResponse extends StatelessWidget {
  const ReviewResponse({
    Key? key,
    required this.review,
  }) : super(key: key);

  final Review review;

  @override
  Widget build(BuildContext context) {
    final responseStr = review.response.getOrCrash();
    if (responseStr.isEmpty) {
      return Container();
    } else {
      return Builder(builder: (context) {
        final width = MediaQuery.of(context).size.width;
        return Container(
          margin: const EdgeInsets.only(right: 8),
          color: kLightestBrown,
          width: width - 30,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 18, 12, 18),
            child: Text(responseStr),
          ),
        );
      });
    }
  }
}
