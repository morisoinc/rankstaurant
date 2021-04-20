import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'''^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+''';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 8) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserRole(String input) {
  if (input == 'admin' || input == 'owner' || input == 'regular') {
    return right(input);
  } else {
    return left(ValueFailure.invalidUserRole(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateRestaurantName(String input,
    {required bool isInitial}) {
  if (input.isEmpty && !isInitial) {
    return left(ValueFailure.emptyRestaurantName(failedValue: input));
  } else if (input.length > 50) {
    return left(ValueFailure.longRestaurantName(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<double>, double> validateRestaurantRating(double input) {
  if (input >= -1 && input <= 5) {
    return right(input);
  } else {
    return left(ValueFailure.invalidRestaurantRating(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateReviewBody(String input) {
  if (input.length < 360) {
    return right(input);
  } else {
    return left(ValueFailure.longReviewBody(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateReviewRating(int input,
    {required bool isInitial}) {
  if ((input > 0 && input <= 5) || isInitial) {
    return right(input);
  } else {
    return left(ValueFailure.emptyReviewRating(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateReviewResponse(String input) {
  if (input.length < 360) {
    return right(input);
  } else {
    return left(ValueFailure.longReviewResponse(failedValue: input));
  }
}
