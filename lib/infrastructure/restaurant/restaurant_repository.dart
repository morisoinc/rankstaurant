import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kt_dart/kt.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/auth/i_auth_facade.dart';
import 'package:rankstaurant/domain/core/errors.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/value_objects.dart';
import 'package:rankstaurant/infrastructure/core/firestore_helpers.dart';
import 'package:rankstaurant/infrastructure/restaurant/restaurant_dtos.dart';
import 'package:rxdart/rxdart.dart';

import 'package:rankstaurant/injection.dart';

@LazySingleton(as: IRestaurantRepository)
class RestaurantRepository implements IRestaurantRepository {
  RestaurantRepository(this._firestore, this._firebaseAuth);

  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  @override
  Stream<Either<RestaurantFailure, Restaurant>> watch(
      Restaurant restaurant) async* {
    final restaurantsCollection = await _firestore.restaurantsCollection();

    yield* restaurantsCollection
        .doc(restaurant.id.getOrCrash())
        .snapshots()
        .map(
          (snapshot) => right<RestaurantFailure, Restaurant>(
            RestaurantDto.fromFirestore(snapshot).toDomain(),
          ),
        )
        .onErrorReturnWith((e) => left(const RestaurantFailure.unexpected()));
  }

  @override
  Future<Either<RestaurantFailure, Unit>> create(Restaurant restaurant) async {
    try {
      final restaurantsCollection = await _firestore.restaurantsCollection();
      final restaurantDto = RestaurantDto.fromDomain(restaurant)
          .copyWith(owner: _firebaseAuth.currentUser!.uid);

      final existingRestaurant = await restaurantsCollection
          .where('name', isEqualTo: restaurant.name.getOrCrash())
          .get();

      if (existingRestaurant.docs.isEmpty) {
        await restaurantsCollection
            .doc(restaurantDto.id)
            .set(restaurantDto.toJson());

        return right(unit);
      } else {
        return left(const RestaurantFailure.unexpected());
      }
    } on FirebaseException {
      return left(const RestaurantFailure.unexpected());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> update(Restaurant restaurant) async {
    try {
      final restaurantsCollection = await _firestore.restaurantsCollection();
      final restaurantDto = RestaurantDto.fromDomain(restaurant);

      await restaurantsCollection
          .doc(restaurantDto.id)
          .update(restaurantDto.toJson());

      return right(unit);
    } on FirebaseException {
      return left(const RestaurantFailure.unexpected());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> delete(Restaurant restaurant) async {
    try {
      final restaurantsCollection = await _firestore.restaurantsCollection();
      final originalRestaurant =
          await restaurantsCollection.doc(restaurant.id.getOrCrash()).get();
      final restaurantDto = RestaurantDto.fromFirestore(originalRestaurant)
          .copyWith(archived: true);

      await restaurantsCollection
          .doc(restaurantDto.id)
          .update(restaurantDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const RestaurantFailure.unexpected());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> updateReviewRanking(
      Restaurant restaurant, int originalRating, int newRating) async {
    try {
      final restaurantsCollection = await _firestore.restaurantsCollection();
      final originalRestaurantDoc =
          await restaurantsCollection.doc(restaurant.id.getOrCrash()).get();
      final originalRestaurant =
          RestaurantDto.fromFirestore(originalRestaurantDoc).toDomain();

      final restaurantLowestRating =
          originalRestaurant.lowestRating.getOrCrash();
      final restaurantHighestRating =
          originalRestaurant.highestRating.getOrCrash();

      var updatedRestaurant = originalRestaurant.copyWith(
        latestRating: RestaurantRating(newRating.toDouble()),
        numberOfRatings: originalRating == 0
            ? originalRestaurant.numberOfRatings + 1
            : originalRestaurant.numberOfRatings,
        sumOfRatings: originalRating == 0
            ? originalRestaurant.sumOfRatings + newRating
            : originalRestaurant.sumOfRatings + newRating - originalRating,
        lowestRating:
            restaurantLowestRating == -1 || newRating < restaurantLowestRating
                ? RestaurantRating(newRating.toDouble())
                : originalRestaurant.lowestRating,
        highestRating: newRating > restaurantHighestRating
            ? RestaurantRating(newRating.toDouble())
            : originalRestaurant.highestRating,
      );

      updatedRestaurant = updatedRestaurant.copyWith(
        averageRating: RestaurantRating(
          updatedRestaurant.sumOfRatings / updatedRestaurant.numberOfRatings,
        ),
      );

      final restaurantDto = RestaurantDto.fromDomain(updatedRestaurant);

      await restaurantsCollection
          .doc(restaurantDto.id)
          .update(restaurantDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const RestaurantFailure.unexpected());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> removeReviewFromRanking(
    Restaurant restaurant,
    int rating,
  ) async {
    try {
      final restaurantsCollection = await _firestore.restaurantsCollection();
      final originalRestaurantDoc =
          await restaurantsCollection.doc(restaurant.id.getOrCrash()).get();
      final originalRestaurant =
          RestaurantDto.fromFirestore(originalRestaurantDoc).toDomain();

      var updatedRestaurant = originalRestaurant.copyWith(
        numberOfRatings: originalRestaurant.numberOfRatings - 1,
        sumOfRatings: originalRestaurant.sumOfRatings - rating,
      );

      updatedRestaurant = updatedRestaurant.copyWith(
        averageRating: RestaurantRating(
          updatedRestaurant.sumOfRatings / updatedRestaurant.numberOfRatings,
        ),
      );

      final restaurantDto = RestaurantDto.fromDomain(updatedRestaurant);

      await restaurantsCollection
          .doc(restaurantDto.id)
          .update(restaurantDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const RestaurantFailure.unexpected());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> updatePendingReviews(
      Restaurant restaurant, int pendingReviews) async {
    try {
      final restaurantsCollection = await _firestore.restaurantsCollection();
      final originalRestaurantDoc =
          await restaurantsCollection.doc(restaurant.id.getOrCrash()).get();
      final originalRestaurant =
          RestaurantDto.fromFirestore(originalRestaurantDoc).toDomain();

      final Restaurant updatedRestaurant = originalRestaurant.copyWith(
        pendingReviews: originalRestaurant.pendingReviews + pendingReviews,
      );

      final result = await update(updatedRestaurant);

      return result.fold((l) => left(l), (r) => right(r));
    } on FirebaseException catch (e) {
      return left(const RestaurantFailure.unexpected());
    }
  }

  @override
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchAll({
    required int? rating,
  }) async* {
    final restaurantsCollection = await _firestore.restaurantsCollection();

    if (rating != null) {
      yield* restaurantsCollection
          .where('archived', isEqualTo: false)
          .where('averageRating',
              isGreaterThanOrEqualTo: rating, isLessThan: rating + 1)
          .orderBy('averageRating', descending: true)
          .snapshots()
          .map(
            (snapshot) => right<RestaurantFailure, KtList<Restaurant>>(
              snapshot.docs
                  .map((doc) => RestaurantDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(const RestaurantFailure.unexpected());
      });
    } else {
      yield* restaurantsCollection
          .where('archived', isEqualTo: false)
          .orderBy('averageRating', descending: true)
          .snapshots()
          .map(
            (snapshot) => right<RestaurantFailure, KtList<Restaurant>>(
              snapshot.docs
                  .map((doc) => RestaurantDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(const RestaurantFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchOwn({
    required int? rating,
  }) async* {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    final restaurantsCollection = await _firestore.restaurantsCollection();

    if (rating != null) {
      yield* restaurantsCollection
          .where('archived', isEqualTo: false)
          .where('averageRating',
              isGreaterThanOrEqualTo: rating, isLessThan: rating + 1)
          .orderBy('averageRating', descending: true)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map((doc) => RestaurantDto.fromFirestore(doc).toDomain()),
          )
          .map(
            (restaurants) => right<RestaurantFailure, KtList<Restaurant>>(
              restaurants
                  .where((restaurant) => restaurant.owner == user.id)
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(const RestaurantFailure.unexpected());
      });
    } else {
      yield* restaurantsCollection
          .where('archived', isEqualTo: false)
          .orderBy('averageRating', descending: true)
          .snapshots()
          .map(
            (snapshot) => snapshot.docs
                .map((doc) => RestaurantDto.fromFirestore(doc).toDomain()),
          )
          .map(
            (restaurants) => right<RestaurantFailure, KtList<Restaurant>>(
              restaurants
                  .where((restaurant) => restaurant.owner == user.id)
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(const RestaurantFailure.unexpected());
      });
    }
  }
}
