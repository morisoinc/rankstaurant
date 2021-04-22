import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';

abstract class IRestaurantRepository {
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchAll();
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchOwn();
  Stream<Either<RestaurantFailure, Restaurant>> watch(Restaurant restaurant);
  Future<Either<RestaurantFailure, Unit>> create(Restaurant restaurant);
  Future<Either<RestaurantFailure, Unit>> update(Restaurant restaurant);
  Future<Either<RestaurantFailure, Unit>> delete(Restaurant restaurant);
  Future<Either<RestaurantFailure, Unit>> updateReviewRanking(
      Restaurant restaurant, int originalRating, int newRating);
  Future<Either<RestaurantFailure, Unit>> updatePendingReviews(
      Restaurant restaurant, int pendingReviews);
  Future<Either<RestaurantFailure, Unit>> removeReviewFromRanking(
      Restaurant restaurant, int rating);
}
