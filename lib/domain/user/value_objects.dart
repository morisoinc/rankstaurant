import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/core/failures.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/core/value_validators.dart';

class UserEmail extends ValueObject<String> {
  factory UserEmail(String input, {required bool isInitial}) {
    return UserEmail._(validateEmailAddress(input, isInitial: isInitial));
  }

  const UserEmail._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  List<Object?> get props => [value];
}

class UserRole extends ValueObject<String> {
  factory UserRole(String input) {
    return UserRole._(validateUserRole(input));
  }

  const UserRole._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  List<Object?> get props => [value];
}
