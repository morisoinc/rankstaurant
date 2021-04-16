part of 'reviews_bloc.dart';

@freezed
abstract class ReviewsState with _$ReviewsState {
  const factory ReviewsState({required Restaurant restaurant}) = _ReviewsState;
  const factory ReviewsState.loading() = _Loading;
  const factory ReviewsState.loaded(KtList<Review> reviews) = _Loaded;
  const factory ReviewsState.fail(ReviewFailure failure) = _Failure;

  factory ReviewsState.initial() =>
      ReviewsState(restaurant: Restaurant.empty());
}
