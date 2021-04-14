import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/user/i_user_repository.dart';
import 'package:rankstaurant/domain/user/user_failure.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:rankstaurant/infrastructure/core/firestore_helpers.dart';
import 'package:rankstaurant/infrastructure/user/user_dtos.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      final usersCollection = await _firestore.usersCollection();
      final userDto = UserDto.fromDomain(user);

      await usersCollection.doc(userDto.id).set(userDto.toJson());

      return right(unit);
    } on FirebaseException {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, User>> get(String id) async {
    try {
      final usersCollection = await _firestore.usersCollection();

      final doc = await usersCollection.doc(id).get();

      final user = UserDto.fromFirestore(doc).toDomain();

      return right(user);
    } on FirebaseException {
      return left(const UserFailure.unexpected());
    }
  }
}
