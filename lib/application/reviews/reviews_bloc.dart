import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/review/i_review_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/domain/review/review_failure.dart';

part 'reviews_event.dart';
part 'reviews_state.dart';
part 'reviews_bloc.freezed.dart';

@injectable
class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsBloc(this._reviewRepository) : super(ReviewsState.initial());

  final IReviewRepository _reviewRepository;

  StreamSubscription<Either<ReviewFailure, KtList<Review>>>? _subscription;

  @override
  Stream<ReviewsState> mapEventToState(
    ReviewsEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const ReviewsState.loading();
        await _subscription?.cancel();
        _subscription = _reviewRepository.watchAll(e.restaurant).listen(
              (failureOrReviews) => add(
                ReviewsEvent.reviewsReceived(failureOrReviews),
              ),
            );
      },
      reviewsReceived: (e) async* {
        yield e.failureOrReviews.fold(
          (l) => ReviewsState.fail(l),
          (reviews) => ReviewsState.loaded(reviews),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
