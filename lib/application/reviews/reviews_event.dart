part of 'reviews_bloc.dart';

@freezed
abstract class ReviewsEvent with _$ReviewsEvent {
  const factory ReviewsEvent.watchAll(Restaurant restaurant) = _WatchAll;
  const factory ReviewsEvent.reviewsReceived(
    Either<ReviewFailure, KtList<Review>> failureOrReviews,
  ) = _ReviewsReceived;
}
