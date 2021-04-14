import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rankstaurant/domain/core/errors.dart';
import 'package:uuid/uuid.dart';

import 'failures.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  List<Object?> get props => [value];
}

class UniqueId extends ValueObject<String> {
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  List<Object?> get props => [value];
}
