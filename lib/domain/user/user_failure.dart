import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.invalidEmail() = _InvalidEmail;
  const factory UserFailure.invalidRole() = _InvalidRole;
  const factory UserFailure.unexpected() = _Unexpected;
}
