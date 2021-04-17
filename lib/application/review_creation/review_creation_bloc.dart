import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/i_review_repository.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/domain/review/review_failure.dart';
import 'package:rankstaurant/domain/review/value_objects.dart';

part 'review_creation_event.dart';
part 'review_creation_state.dart';
part 'review_creation_bloc.freezed.dart';

@injectable
class ReviewCreationBloc
    extends Bloc<ReviewCreationEvent, ReviewCreationState> {
  ReviewCreationBloc(this.reviewRepository, this.restaurantRepository)
      : super(ReviewCreationState.initial());

  final IReviewRepository reviewRepository;
  final IRestaurantRepository restaurantRepository;

  @override
  Stream<ReviewCreationState> mapEventToState(
    ReviewCreationEvent event,
  ) async* {
    yield* event.map(
      bodyChanged: (e) async* {
        yield state.copyWith(
          reviewBody: ReviewBody(e.bodyStr),
          reviewFailureOrSuccessOption: none(),
        );
      },
      ratingChanged: (e) async* {
        yield state.copyWith(
          reviewRating: ReviewRating(e.ratingInt),
          reviewFailureOrSuccessOption: none(),
        );
      },
      leaveReviewPressed: (e) async* {
        Either<ReviewFailure, Unit> failureOrSuccess =
            left(const ReviewFailure.unexpected());

        if (state.reviewBody.isValid() && state.reviewRating.isValid()) {
          yield state.copyWith(
            isSubmitting: true,
            reviewFailureOrSuccessOption: none(),
          );

          final review = Review.empty().copyWith(
            reviewBody: state.reviewBody,
            reviewRating: state.reviewRating,
          );

          failureOrSuccess = await reviewRepository.create(
            review,
            e.restaurant,
          );

          if (failureOrSuccess.isRight()) {
            failureOrSuccess = await restaurantRepository.updateWithReview(
                e.restaurant, review);
          }
        }

        yield state.copyWith(
          isSubmitting: false,
          reviewFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
