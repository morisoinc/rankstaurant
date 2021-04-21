import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:kt_dart/kt.dart';
import 'package:rankstaurant/domain/user/i_user_repository.dart';
import 'package:rankstaurant/domain/user/user_failure.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:rankstaurant/infrastructure/core/firestore_helpers.dart';
import 'package:rankstaurant/infrastructure/user/user_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  UserRepository(this._firebaseAuth, this._firestore);

  final FirebaseFirestore _firestore;
  final firebase_auth.FirebaseAuth _firebaseAuth;

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

  @override
  Future<Either<UserFailure, User>> getByEmail(String email) async {
    try {
      final usersCollection = await _firestore.usersCollection();

      final query =
          await usersCollection.where('email', isEqualTo: email).get();

      if (query.size > 0) {
        final user = UserDto.fromFirestore(query.docs.first).toDomain();

        return right(user);
      } else {
        return left(const UserFailure.unexpected());
      }
    } on FirebaseException catch (e) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(User user) async {
    try {
      final usersCollection = await _firestore.usersCollection();

      final doc = await usersCollection.doc(user.id.getOrCrash()).get();

      final updatedUser =
          UserDto.fromFirestore(doc).toDomain().copyWith(archived: true);
      final userDto = UserDto.fromDomain(updatedUser);

      await usersCollection.doc(userDto.id).update(userDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Stream<Either<UserFailure, KtList<User>>> watchAll() async* {
    final usersCollection = await _firestore.usersCollection();

    yield* usersCollection
        .where('archived', isEqualTo: false)
        .snapshots()
        .map(
          (snapshot) => right<UserFailure, KtList<User>>(
            snapshot.docs
                .map((doc) => UserDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) => left(const UserFailure.unexpected()));
  }

  @override
  Stream<Either<UserFailure, User>> watchSelf() async* {
    final usersCollection = await _firestore.usersCollection();

    yield* usersCollection
        .doc(_firebaseAuth.currentUser?.uid)
        .snapshots()
        .map(
          (snapshot) => right<UserFailure, User>(
            UserDto.fromFirestore(snapshot).toDomain(),
          ),
        )
        .onErrorReturnWith((error) => left(const UserFailure.unexpected()));
  }
}
