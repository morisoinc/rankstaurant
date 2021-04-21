import 'package:dartz/dartz.dart';
import 'package:rankstaurant/domain/core/failures.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input, {required bool isInitial}) {
    return EmailAddress._(
      validateEmailAddress(input, isInitial: isInitial),
    );
  }

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  List<Object?> get props => [value];
}

class Password extends ValueObject<String> {
  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  List<Object?> get props => [value];
}
