import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/i_review_repository.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/domain/review/review_failure.dart';
import 'package:rankstaurant/domain/review/value_objects.dart';

part 'review_response_event.dart';
part 'review_response_state.dart';
part 'review_response_bloc.freezed.dart';

@injectable
class ReviewResponseBloc
    extends Bloc<ReviewResponseEvent, ReviewResponseState> {
  ReviewResponseBloc(this.reviewRepository)
      : super(ReviewResponseState.initial());

  IReviewRepository reviewRepository;

  @override
  Stream<ReviewResponseState> mapEventToState(
    ReviewResponseEvent event,
  ) async* {
    yield* event.map(
      responseChanged: (e) async* {
        yield state.copyWith(
          response: ReviewResponse(e.responseStr),
          reviewFailureOrSuccessOption: none(),
        );
      },
      leaveResponsePressed: (e) async* {
        Either<ReviewFailure, Unit>? failureOrSuccess;

        if (state.response.isValid()) {
          yield state.copyWith(
            isSubmitting: true,
            reviewFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await reviewRepository.update(
              e.review.copyWith(response: state.response), e.restaurant);
        }

        yield state.copyWith(
          isSubmitting: false,
          reviewFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
