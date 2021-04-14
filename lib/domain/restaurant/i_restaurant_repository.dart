import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';

abstract class IRestaurantRepository {
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchAll();
  Stream<Either<RestaurantFailure, KtList<Restaurant>>> watchOwn();
  Future<Either<RestaurantFailure, Unit>> create(Restaurant restaurant);
  Future<Either<RestaurantFailure, Unit>> update(Restaurant restaurant);
}
