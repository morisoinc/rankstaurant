// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) {
  return _ReviewDto.fromJson(json);
}

/// @nodoc
class _$ReviewDtoTearOff {
  const _$ReviewDtoTearOff();

  _ReviewDto call(
      {@JsonKey(ignore: true) String? id,
      required String reviewBody,
      required int reviewRating,
      @ServerTimestampConverter() required FieldValue serverTimeStamp}) {
    return _ReviewDto(
      id: id,
      reviewBody: reviewBody,
      reviewRating: reviewRating,
      serverTimeStamp: serverTimeStamp,
    );
  }

  ReviewDto fromJson(Map<String, Object> json) {
    return ReviewDto.fromJson(json);
  }
}

/// @nodoc
const $ReviewDto = _$ReviewDtoTearOff();

/// @nodoc
mixin _$ReviewDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get reviewBody => throw _privateConstructorUsedError;
  int get reviewRating => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDtoCopyWith<ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDtoCopyWith<$Res> {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) then) =
      _$ReviewDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String reviewBody,
      int reviewRating,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res> implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._value, this._then);

  final ReviewDto _value;
  // ignore: unused_field
  final $Res Function(ReviewDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewBody = freezed,
    Object? reviewRating = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewBody: reviewBody == freezed
          ? _value.reviewBody
          : reviewBody // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRating: reviewRating == freezed
          ? _value.reviewRating
          : reviewRating // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$ReviewDtoCopyWith(
          _ReviewDto value, $Res Function(_ReviewDto) then) =
      __$ReviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String reviewBody,
      int reviewRating,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$ReviewDtoCopyWithImpl<$Res> extends _$ReviewDtoCopyWithImpl<$Res>
    implements _$ReviewDtoCopyWith<$Res> {
  __$ReviewDtoCopyWithImpl(_ReviewDto _value, $Res Function(_ReviewDto) _then)
      : super(_value, (v) => _then(v as _ReviewDto));

  @override
  _ReviewDto get _value => super._value as _ReviewDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewBody = freezed,
    Object? reviewRating = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_ReviewDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewBody: reviewBody == freezed
          ? _value.reviewBody
          : reviewBody // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRating: reviewRating == freezed
          ? _value.reviewRating
          : reviewRating // ignore: cast_nullable_to_non_nullable
              as int,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ReviewDto extends _ReviewDto {
  const _$_ReviewDto(
      {@JsonKey(ignore: true) this.id,
      required this.reviewBody,
      required this.reviewRating,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String reviewBody;
  @override
  final int reviewRating;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ReviewDto(id: $id, reviewBody: $reviewBody, reviewRating: $reviewRating, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.reviewBody, reviewBody) ||
                const DeepCollectionEquality()
                    .equals(other.reviewBody, reviewBody)) &&
            (identical(other.reviewRating, reviewRating) ||
                const DeepCollectionEquality()
                    .equals(other.reviewRating, reviewRating)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reviewBody) ^
      const DeepCollectionEquality().hash(reviewRating) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  _$ReviewDtoCopyWith<_ReviewDto> get copyWith =>
      __$ReviewDtoCopyWithImpl<_ReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReviewDtoToJson(this);
  }
}

abstract class _ReviewDto extends ReviewDto {
  const factory _ReviewDto(
          {@JsonKey(ignore: true) String? id,
          required String reviewBody,
          required int reviewRating,
          @ServerTimestampConverter() required FieldValue serverTimeStamp}) =
      _$_ReviewDto;
  const _ReviewDto._() : super._();

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get reviewBody => throw _privateConstructorUsedError;
  @override
  int get reviewRating => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewDtoCopyWith<_ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}
