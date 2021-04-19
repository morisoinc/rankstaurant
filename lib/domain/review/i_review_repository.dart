import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/domain/review/review_failure.dart';

abstract class IReviewRepository {
  Stream<Either<ReviewFailure, KtList<Review>>> watchAll(Restaurant restaurant);
  Future<Either<ReviewFailure, Unit>> create(
      Review review, Restaurant restaurant);
  Future<Either<ReviewFailure, Unit>> update(
      Review review, Restaurant restaurant);
  Future<Either<ReviewFailure, Unit>> delete(
      Review review, Restaurant restaurant);
}
