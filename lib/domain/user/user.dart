import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/core/failures.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/user/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  factory User({
    required UniqueId id,
    required UserEmail email,
    required UserRole role,
    required bool archived,
  }) = _User;

  const User._();

  factory User.empty() => User(
        id: UniqueId(),
        email: UserEmail('', isInitial: true),
        role: UserRole('regular'),
        archived: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return email.failureOrUnit
        .andThen(role.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
