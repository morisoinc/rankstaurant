import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurant_self/restaurant_self_bloc.dart';
import 'package:rankstaurant/application/review_form/review_form_bloc.dart';
import 'package:rankstaurant/application/reviews/reviews_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/restaurant_self/widgets/error_review.dart';
import 'package:rankstaurant/presentation/restaurant_self/widgets/review_card.dart';
import 'package:rankstaurant/presentation/restaurant_self/widgets/stars_selector.dart';

class RestaurantSelfPage extends StatelessWidget {
  const RestaurantSelfPage({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<RestaurantSelfBloc>()
            ..add(RestaurantSelfEvent.initialized(optionOf(restaurant)))
            ..add(RestaurantSelfEvent.watch(restaurant)),
        ),
        BlocProvider(
          create: (context) =>
              getIt<ReviewsBloc>()..add(ReviewsEvent.watchAll(restaurant)),
        ),
      ],
      child: Scaffold(
        body: Column(
          children: [
            BlocBuilder<RestaurantSelfBloc, RestaurantSelfState>(
              builder: (context, state) {
                return state.map(
                  (value) => buildHeader(value.restaurant, context),
                  loaded: (state) => buildHeader(state.restaurant, context),
                  fail: (state) => Container(),
                );
              },
            ),
            Expanded(
              child: BlocConsumer<ReviewsBloc, ReviewsState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.map(
                    (value) => Container(),
                    loading: (_) =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (state) {
                      return state.reviews.isEmpty()
                          ? Container()
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.reviews.size,
                              itemBuilder: (context, index) {
                                final review = state.reviews[index];
                                if (review.failureOrOption.isSome()) {
                                  return ErrorReviewCard();
                                } else {
                                  return ReviewCard(review, restaurant);
                                }
                              },
                            );
                    },
                    fail: (_) => Container(),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: _buildFab(context),
      ),
    );
  }

  Column buildHeader(Restaurant restaurant, BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                restaurant.name.getOrCrash(),
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        buildRatingSection(restaurant, context),
      ],
    );
  }

  Row buildRatingSection(Restaurant restaurant, BuildContext context) {
    final isRestaurantNew = restaurant.averageRating.getOrCrash() == -1;

    if (isRestaurantNew) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              'New!',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: kYellow),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    } else {
      final lowestRating = restaurant.lowestRating.getOrCrash().toString();
      final averageRating = restaurant.averageRating.getOrCrash().toString();
      final highestRating = restaurant.highestRating.getOrCrash().toString();
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: const [
              SizedBox(height: 2),
              Icon(Icons.arrow_downward_rounded, color: kRed),
            ],
          ),
          Text(
            lowestRating,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(color: kRed),
          ),
          const SizedBox(width: 16),
          Column(
            children: [
              Text(
                averageRating,
                style: Theme.of(context).textTheme.headline6,
              ),
              const Icon(
                Icons.star,
                size: 22,
              ),
            ],
          ),
          const SizedBox(width: 16),
          Text(
            highestRating,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: kDarkerGreen),
          ),
          Column(
            children: const [
              SizedBox(height: 2),
              Icon(Icons.arrow_upward_rounded, color: kDarkerGreen),
            ],
          ),
        ],
      );
    }
  }

  Widget _buildFab(BuildContext context) {
    switch (SettingsHelper.userRole()) {
      case Role.regular:
        return FloatingActionButton(
          onPressed: () => showLeaveReviewDialog(context),
          child: const Icon(Icons.add, size: 24),
        );
      case Role.admin:
      case Role.owner:
      default:
        return Container();
    }
  }

  void showLeaveReviewDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => BlocProvider<ReviewFormBloc>(
        create: (context) => getIt<ReviewFormBloc>()
          ..add(ReviewFormEvent.initialized(
              optionOf(null), optionOf(restaurant))),
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
              title: const Text('Leave a review'),
              content: Builder(
                builder: (context) {
                  final width = MediaQuery.of(context).size.width;
                  return Form(
                    child: SizedBox(
                      width: width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          StarsSelector(
                            starsSelected: state.review.rating.getOrCrash(),
                            onChanged: (starsSelected) => context
                                .read<ReviewFormBloc>()
                                .add(ReviewFormEvent.ratingChanged(
                                    starsSelected)),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            decoration:
                                const InputDecoration(hintText: 'Comment'),
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
                                    longReviewBody: (_) =>
                                        'Comment must be shorter',
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
                    child: const Text('Save')),
              ],
              shape: const RoundedRectangleBorder(),
            );
          },
        ),
      ),
    );
  }
}
