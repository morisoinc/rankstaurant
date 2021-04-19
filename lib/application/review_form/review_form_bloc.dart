import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/i_review_repository.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/domain/review/review_failure.dart';
import 'package:rankstaurant/domain/review/value_objects.dart';

part 'review_form_event.dart';
part 'review_form_state.dart';
part 'review_form_bloc.freezed.dart';

@injectable
class ReviewFormBloc extends Bloc<ReviewFormEvent, ReviewFormState> {
  ReviewFormBloc(this.reviewRepository, this.restaurantRepository)
      : super(ReviewFormState.initial());

  final IReviewRepository reviewRepository;
  final IRestaurantRepository restaurantRepository;

  @override
  Stream<ReviewFormState> mapEventToState(
    ReviewFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialRestaurantOption.fold(
            () => state,
            (restaurant) => e.initialReviewOption.fold(
                () => state.copyWith(restaurant: restaurant),
                (review) => state.copyWith(
                    restaurant: restaurant, review: review, isEditing: true)));
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          review: state.review.copyWith(body: ReviewBody(e.bodyStr)),
          reviewFailureOrSuccessOption: none(),
        );
      },
      ratingChanged: (e) async* {
        yield state.copyWith(
          review: state.review.copyWith(rating: ReviewRating(e.ratingInt)),
          reviewFailureOrSuccessOption: none(),
        );
      },
      responseChanged: (e) async* {
        yield state.copyWith(
          review:
              state.review.copyWith(response: ReviewResponse(e.responseStr)),
          reviewFailureOrSuccessOption: none(),
        );
      },
      saveReviewPressed: (e) async* {
        Either<ReviewFailure, Unit> failureOrSuccess =
            left(const ReviewFailure.unexpected());

        yield state.copyWith(
          isSubmitting: true,
          reviewFailureOrSuccessOption: none(),
        );

        if (state.review.failureOrOption.isNone()) {
          if (state.isEditing) {
            failureOrSuccess =
                await reviewRepository.update(state.review, state.restaurant);
          } else {
            failureOrSuccess =
                await reviewRepository.create(state.review, state.restaurant);
            if (failureOrSuccess.isRight()) {
              failureOrSuccess = await restaurantRepository.updateWithReview(
                  state.restaurant, state.review);
            }
          }
        }

        yield state.copyWith(
          isSubmitting: false,
          reviewFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleteReviewPressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          reviewFailureOrSuccessOption: none(),
        );

        Either<ReviewFailure, Unit> failureOrSuccess =
            await reviewRepository.delete(state.review, state.restaurant);

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await restaurantRepository.updateWithReview(
              state.restaurant, state.review);
        }

        yield state.copyWith(
          isSubmitting: false,
          reviewFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}