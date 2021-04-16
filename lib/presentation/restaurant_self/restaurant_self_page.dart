import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurant_self/restaurant_self_bloc.dart';
import 'package:rankstaurant/application/reviews/reviews_bloc.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/restaurant_self/widgets/error_review.dart';
import 'package:rankstaurant/presentation/restaurant_self/widgets/review_card.dart';

class RestaurantSelfPage extends StatelessWidget {
  const RestaurantSelfPage({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<RestaurantSelfBloc>()
            ..add(RestaurantSelfEvent.initialized(optionOf(restaurant))),
        ),
        BlocProvider(
          create: (context) =>
              getIt<ReviewsBloc>()..add(ReviewsEvent.watchAll(restaurant)),
        ),
      ],
      child: Scaffold(
        body: Column(
          children: [
            BlocConsumer<RestaurantSelfBloc, RestaurantSelfState>(
              listener: (context, state) {},
              builder: (context, state) {
                return buildHeader(state, context);
              },
            ),
            LayoutBuilder(builder: (context, constraints) {
              return BlocConsumer<ReviewsBloc, ReviewsState>(
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
                                  return ReviewCard(review);
                                }
                              },
                            );
                    },
                    fail: (_) => Container(),
                  );
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  Column buildHeader(RestaurantSelfState state, BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                state.restaurant.name.getOrCrash(),
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        buildRatingSection(state, context),
      ],
    );
  }

  Row buildRatingSection(RestaurantSelfState state, BuildContext context) {
    final isRestaurantNew = state.restaurant.averageRating.getOrCrash() == -1;

    if (isRestaurantNew) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              'New!',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    } else {
      final lowestRating =
          state.restaurant.lowestRating.getOrCrash().toString();
      final averageRating =
          state.restaurant.averageRating.getOrCrash().toString();
      final highestRating =
          state.restaurant.highestRating.getOrCrash().toString();
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
}
