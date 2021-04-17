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
      required String body,
      required int rating,
      required String response,
      @ServerTimestampConverter() required FieldValue serverTimeStamp}) {
    return _ReviewDto(
      id: id,
      body: body,
      rating: rating,
      response: response,
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
  String get body => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
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
      String body,
      int rating,
      String response,
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
    Object? body = freezed,
    Object? rating = freezed,
    Object? response = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
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
      String body,
      int rating,
      String response,
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
    Object? body = freezed,
    Object? rating = freezed,
    Object? response = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_ReviewDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.body,
      required this.rating,
      required this.response,
      @ServerTimestampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ReviewDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String body;
  @override
  final int rating;
  @override
  final String response;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ReviewDto(id: $id, body: $body, rating: $rating, response: $response, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(response) ^
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
          required String body,
          required int rating,
          required String response,
          @ServerTimestampConverter() required FieldValue serverTimeStamp}) =
      _$_ReviewDto;
  const _ReviewDto._() : super._();

  factory _ReviewDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  String get response => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewDtoCopyWith<_ReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}
