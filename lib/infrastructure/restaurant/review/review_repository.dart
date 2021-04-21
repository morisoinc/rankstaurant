import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kt_dart/kt.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/review/i_review_repository.dart';
import 'package:rankstaurant/domain/review/review_failure.dart';
import 'package:rankstaurant/infrastructure/core/firestore_helpers.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rxdart/rxdart.dart';
import 'review_dtos.dart';

@LazySingleton(as: IReviewRepository)
class ReviewRepository implements IReviewRepository {
  ReviewRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<ReviewFailure, Unit>> create(
      Review review, Restaurant restaurant) async {
    try {
      final reviewDto = ReviewDto.fromDomain(review);
      final reviewsCollection =
          await _firestore.reviewsColleciton(restaurant.id.getOrCrash());

      await reviewsCollection.doc(reviewDto.id).set(reviewDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const ReviewFailure.unexpected());
    }
  }

  @override
  Future<Either<ReviewFailure, Unit>> update(
      Review review, Restaurant restaurant) async {
    try {
      final reviewDto = ReviewDto.fromDomain(review);
      final reviewsCollection =
          await _firestore.reviewsColleciton(restaurant.id.getOrCrash());

      await reviewsCollection.doc(reviewDto.id).update(reviewDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const ReviewFailure.unexpected());
    }
  }

  @override
  Future<Either<ReviewFailure, Unit>> delete(
      Review review, Restaurant restaurant) async {
    try {
      final reviewsCollection =
          await _firestore.reviewsColleciton(restaurant.id.getOrCrash());
      final originalReview =
          await reviewsCollection.doc(review.id.getOrCrash()).get();
      final reviewDto =
          ReviewDto.fromFirestore(originalReview).copyWith(archived: true);

      await reviewsCollection.doc(reviewDto.id).update(reviewDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const ReviewFailure.unexpected());
    }
  }

  @override
  Stream<Either<ReviewFailure, KtList<Review>>> watchAll(
      Restaurant restaurant) async* {
    final reviewsCollection =
        await _firestore.reviewsColleciton(restaurant.id.getOrCrash());

    yield* reviewsCollection
        .where('archived', isEqualTo: false)
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) => right<ReviewFailure, KtList<Review>>(
              snapshot.docs.map((doc) {
                return ReviewDto.fromFirestore(doc).toDomain();
              }).toImmutableList(),
            ))
        .onErrorReturnWith((error) {
      return left(const ReviewFailure.unexpected());
    });
  }
}
