import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/auth/user.dart';
import 'package:rankstaurant/domain/auth/value_objects.dart';
import 'package:rankstaurant/domain/user/value_objects.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required UserRole userRole,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<void> signOut();
}
