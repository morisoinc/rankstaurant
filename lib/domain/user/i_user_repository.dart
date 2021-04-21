import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:rankstaurant/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
  Future<Either<UserFailure, User>> get(String id);
  Stream<Either<UserFailure, KtList<User>>> watchAll();
}
