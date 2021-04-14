import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kt_dart/kt.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/auth/i_auth_facade.dart';
import 'package:rankstaurant/domain/core/errors.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/infrastructure/core/firestore_helpers.dart';
import 'package:rankstaurant/infrastructure/restaurant/restaurant_dtos.dart';
import 'package:rxdart/rxdart.dart';

import 'package:rankstaurant/injection.dart';

@LazySingleton(as: IRestaurantRepository)
class RestaurantRepository implements IRestaurantRepository {
  RestaurantRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<RestaurantFailure, Unit>> create(Restaurant restaurant) async {
    try {
      final restaurantsCollection = await _firestore.restaurantsCollection();
      final restaurantDto = RestaurantDto.fromDomain(restaurant);

      await restaurantsCollection
          .doc(restaurantDto.id)
          .set(restaurantDto.toJson());

      return right(unit);
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
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchAll() async* {
    final restaurantsCollection = await _firestore.restaurantsCollection();
    yield* restaurantsCollection
        .orderBy('averageRating', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<RestaurantFailure, KtList<Restaurant>>(
            snapshot.docs
                .map((doc) => RestaurantDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) => left(const RestaurantFailure.unexpected()));
  }

  @override
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchOwn() async* {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    final restaurantsCollection = await _firestore.restaurantsCollection();
    yield* restaurantsCollection
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
        .onErrorReturnWith((e) => left(const RestaurantFailure.unexpected()));
  }
}
