import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/review_form/review_form_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/restaurant_self/widgets/stars_selector.dart';

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
  switch (SettingsHelper.userRole()) {
    case Role.owner:
      if (review.response.getOrCrash().isEmpty) {
        showRespondToReview(review, restaurant, context);
      }
      break;
    case Role.admin:
      showEditReview(review, restaurant, context);
      break;
    default:
      break;
  }
}

void showRespondToReview(
    Review review, Restaurant restaurant, BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => BlocProvider<ReviewFormBloc>(
      create: (context) => getIt<ReviewFormBloc>()
        ..add(ReviewFormEvent.initialized(
            optionOf(review), optionOf(restaurant))),
      child: BlocConsumer<ReviewFormBloc, ReviewFormState>(
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
                              .read<ReviewFormBloc>()
                              .add(ReviewFormEvent.responseChanged(value)),
                          validator: (_) => context
                              .read<ReviewFormBloc>()
                              .state
                              .review
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
                    context
                        .read<ReviewFormBloc>()
                        .add(const ReviewFormEvent.saveReviewPressed());
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

void showEditReview(
    Review review, Restaurant restaurant, BuildContext context) {
  final bodyEditingController = TextEditingController();
  final responseEditingController = TextEditingController();

  bool bodyEditingControllerInitialized = false;
  bool responseEditingControllerInitialized = false;

  showDialog(
    context: context,
    builder: (_) => BlocProvider<ReviewFormBloc>(
      create: (context) => getIt<ReviewFormBloc>()
        ..add(ReviewFormEvent.initialized(
            optionOf(review), optionOf(restaurant))),
      child: BlocConsumer<ReviewFormBloc, ReviewFormState>(
        listener: (context, state) {
          if (!bodyEditingControllerInitialized) {
            bodyEditingController.text = state.review.body.getOrCrash();
            bodyEditingControllerInitialized = true;
          }

          if (!responseEditingControllerInitialized) {
            responseEditingController.text = state.review.response.getOrCrash();
            responseEditingControllerInitialized = true;
          }

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
            title: const Text('Edit a review'),
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
                        BlocBuilder<ReviewFormBloc, ReviewFormState>(
                          buildWhen: (p, c) =>
                              p.review.rating != c.review.rating,
                          builder: (context, state) {
                            return StarsSelector(
                              starsSelected: state.review.rating.getOrCrash(),
                              onChanged: (starsSelected) => context
                                  .read<ReviewFormBloc>()
                                  .add(ReviewFormEvent.ratingChanged(
                                      starsSelected)),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: bodyEditingController,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          decoration: const InputDecoration(hintText: 'Body'),
                          onChanged: (value) => context
                              .read<ReviewFormBloc>()
                              .add(ReviewFormEvent.bodyChanged(value)),
                          validator: (_) => context
                              .read<ReviewFormBloc>()
                              .state
                              .review
                              .body
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  longReviewBody: (_) => 'Body must be shorter',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: responseEditingController,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          decoration:
                              const InputDecoration(hintText: 'Response'),
                          onChanged: (value) => context
                              .read<ReviewFormBloc>()
                              .add(ReviewFormEvent.responseChanged(value)),
                          validator: (_) => context
                              .read<ReviewFormBloc>()
                              .state
                              .review
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
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context
                        .read<ReviewFormBloc>()
                        .add(const ReviewFormEvent.deleteReviewPressed());
                  },
                  child: const Text('Archive')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    context
                        .read<ReviewFormBloc>()
                        .add(const ReviewFormEvent.saveReviewPressed());
                  },
                  child: const Text('Save')),
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
