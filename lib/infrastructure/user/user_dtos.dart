import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:rankstaurant/domain/user/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const factory UserDto({
    @JsonKey(ignore: true) String? id,
    required String email,
    required String role,
    required bool archived,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()!).copyWith(id: doc.id);
  }

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      email: user.email.getOrCrash(),
      role: user.role.getOrCrash(),
      archived: user.archived,
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id ?? ''),
      email: UserEmail(email, isInitial: false),
      role: UserRole(role),
      archived: archived,
    );
  }
}
