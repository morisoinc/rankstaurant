import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/auth/auth_failure.dart';
import 'package:rankstaurant/domain/auth/i_auth_facade.dart';
import 'package:rankstaurant/domain/auth/user.dart';
import 'package:rankstaurant/domain/auth/value_objects.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/user/i_user_repository.dart';
import 'package:rankstaurant/domain/user/user.dart' as user_domain;
import 'package:rankstaurant/domain/user/user_failure.dart';
import 'package:rankstaurant/domain/user/value_objects.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(this._firebaseAuth, this._userRepository);

  final FirebaseAuth _firebaseAuth;
  final IUserRepository _userRepository;

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required UserRole userRole,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final userRoleStr = userRole.getOrCrash();
    try {
      final UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: emailAddressStr, password: passwordStr);

      final Either<UserFailure, Unit> userCreation =
          await _userRepository.create(user_domain.User(
        id: UniqueId.fromUniqueString(userCredential.user?.uid ?? ''),
        email: UserEmail(emailAddressStr, isInitial: false),
        role: userRole,
        archived: false,
      ));

      return userCreation.fold(
        (l) => left(const AuthFailure.serverError()),
        (r) {
          SettingsHelper.setUserRole(userRoleStr);
          return right(unit);
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final userOption = await _userRepository.getByEmail(emailAddressStr);

      final user_domain.User? existingUser =
          userOption.fold((_) {}, (user) => user);
      if (existingUser != null && existingUser.archived) {
        return left(const AuthFailure.userDisabled());
      }

      userOption.fold((_) {}, (user) {
        if (user.archived) {
          return left(const AuthFailure.userDisabled());
        }
      });

      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      final user = await _userRepository.get(userCredential.user!.uid);

      return user.fold(
        (l) => left(const AuthFailure.serverError()),
        (r) {
          SettingsHelper.setUserRole(r.role.getOrCrash());
          return right(unit);
        },
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailOrPassword());
      } else if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisabled());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() => _firebaseAuth.signOut();
}
