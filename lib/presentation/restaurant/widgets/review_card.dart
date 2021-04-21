import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/review_form/review_form_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/global/widgets/r_bottom_sheet.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/main.dart';
import 'package:rankstaurant/presentation/restaurant/widgets/stars_selector.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard(this.review, this.restaurant);

  final Review review;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InkWell(
            onLongPress: () => onReviewLongPress(review, restaurant, context),
            child: Card(
              margin: const EdgeInsets.all(0),
              elevation: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
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
      ),
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
  Review review,
  Restaurant restaurant,
  BuildContext context,
) {
  RBottomSheet.show(
    context,
    BlocProvider<ReviewFormBloc>(
      create: (context) => getIt<ReviewFormBloc>()
        ..add(ReviewFormEvent.initialized(
            optionOf(review), optionOf(restaurant))),
      child: BlocConsumer<ReviewFormBloc, ReviewFormState>(
        listener: (context, state) {
          state.reviewFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
              loadingOverlay.hide();
              FlushbarHelper.createError(
                message: failure.map(
                  longReviewResponse: (_) => 'Response must be shorter',
                  longReviewBody: (_) => 'Comment must be shorter',
                  emptyRating: (_) => 'Rating is required',
                  unexpected: (_) => 'Unexpected error',
                ),
              ).show(context);
            }, (_) {
              loadingOverlay.hide();
              Navigator.pop(context);
            }),
          );
        },
        builder: (context, state) {
          return RBottomSheet(
            title: 'Respond to a Review',
            context: context,
            saveText: 'Save',
            saveAction: () {
              loadingOverlay.show(context);
              FocusScope.of(context).unfocus();
              context
                  .read<ReviewFormBloc>()
                  .add(const ReviewFormEvent.saveReviewPressed());
            },
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: const InputDecoration(hintText: 'Response'),
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
                            longReviewResponse: (_) =>
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
    ),
  );
}

void showEditReview(
    Review review, Restaurant restaurant, BuildContext context) {
  final bodyEditingController = TextEditingController();
  final responseEditingController = TextEditingController();

  bool bodyEditingControllerInitialized = false;
  bool responseEditingControllerInitialized = false;

  RBottomSheet.show(
    context,
    BlocProvider<ReviewFormBloc>(
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
              loadingOverlay.hide();
              FlushbarHelper.createError(
                message: failure.map(
                  emptyRating: (_) => 'Rating is required',
                  longReviewBody: (_) => 'Comment must be shorter',
                  longReviewResponse: (_) => 'Response must be shorter',
                  unexpected: (_) => 'Unexpected error',
                ),
              ).show(context);
            }, (_) {
              loadingOverlay.hide();
              Navigator.pop(context);
            }),
          );
        },
        builder: (context, state) {
          return RBottomSheet(
            title: 'Edit a Review',
            context: context,
            saveText: 'Save',
            saveAction: () {
              loadingOverlay.show(context);
              FocusScope.of(context).unfocus();
              context
                  .read<ReviewFormBloc>()
                  .add(const ReviewFormEvent.saveReviewPressed());
            },
            deleteText: 'archive',
            deleteAction: () {
              loadingOverlay.show(context);
              FocusScope.of(context).unfocus();
              context
                  .read<ReviewFormBloc>()
                  .add(const ReviewFormEvent.deleteReviewPressed());
            },
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  StarsSelector(
                    starsSelected: state.review.rating.getOrCrash(),
                    onChanged: (starsSelected) => context
                        .read<ReviewFormBloc>()
                        .add(ReviewFormEvent.ratingChanged(starsSelected)),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: bodyEditingController,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: const InputDecoration(hintText: 'Comment'),
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
                            longReviewBody: (_) => 'Comment must be shorter',
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
                    decoration: const InputDecoration(hintText: 'Response'),
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
                            longReviewResponse: (_) =>
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
      return Builder(
        builder: (context) {
          final width = MediaQuery.of(context).size.width;
          return Container(
            color: kLightestBrown,
            width: width - 64,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Text(responseStr),
            ),
          );
        },
      );
    }
  }
}
