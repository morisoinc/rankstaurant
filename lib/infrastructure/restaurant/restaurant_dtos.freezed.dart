// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurant_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDto _$RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _RestaurantDto.fromJson(json);
}

/// @nodoc
class _$RestaurantDtoTearOff {
  const _$RestaurantDtoTearOff();

  _RestaurantDto call(
      {@JsonKey(ignore: true) String? id,
      required String name,
      required String owner,
      required double averageRating,
      required double highestRating,
      required double lowestRating,
      required double latestRating,
      required int numberOfRatings,
      required int sumOfRatings,
      required int pendingReviews,
      required bool archived}) {
    return _RestaurantDto(
      id: id,
      name: name,
      owner: owner,
      averageRating: averageRating,
      highestRating: highestRating,
      lowestRating: lowestRating,
      latestRating: latestRating,
      numberOfRatings: numberOfRatings,
      sumOfRatings: sumOfRatings,
      pendingReviews: pendingReviews,
      archived: archived,
    );
  }

  RestaurantDto fromJson(Map<String, Object> json) {
    return RestaurantDto.fromJson(json);
  }
}

/// @nodoc
const $RestaurantDto = _$RestaurantDtoTearOff();

/// @nodoc
mixin _$RestaurantDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  double get highestRating => throw _privateConstructorUsedError;
  double get lowestRating => throw _privateConstructorUsedError;
  double get latestRating => throw _privateConstructorUsedError;
  int get numberOfRatings => throw _privateConstructorUsedError;
  int get sumOfRatings => throw _privateConstructorUsedError;
  int get pendingReviews => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDtoCopyWith<RestaurantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDtoCopyWith<$Res> {
  factory $RestaurantDtoCopyWith(
          RestaurantDto value, $Res Function(RestaurantDto) then) =
      _$RestaurantDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String owner,
      double averageRating,
      double highestRating,
      double lowestRating,
      double latestRating,
      int numberOfRatings,
      int sumOfRatings,
      int pendingReviews,
      bool archived});
}

/// @nodoc
class _$RestaurantDtoCopyWithImpl<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  _$RestaurantDtoCopyWithImpl(this._value, this._then);

  final RestaurantDto _value;
  // ignore: unused_field
  final $Res Function(RestaurantDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
    Object? latestRating = freezed,
    Object? numberOfRatings = freezed,
    Object? sumOfRatings = freezed,
    Object? pendingReviews = freezed,
    Object? archived = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      highestRating: highestRating == freezed
          ? _value.highestRating
          : highestRating // ignore: cast_nullable_to_non_nullable
              as double,
      lowestRating: lowestRating == freezed
          ? _value.lowestRating
          : lowestRating // ignore: cast_nullable_to_non_nullable
              as double,
      latestRating: latestRating == freezed
          ? _value.latestRating
          : latestRating // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfRatings: numberOfRatings == freezed
          ? _value.numberOfRatings
          : numberOfRatings // ignore: cast_nullable_to_non_nullable
              as int,
      sumOfRatings: sumOfRatings == freezed
          ? _value.sumOfRatings
          : sumOfRatings // ignore: cast_nullable_to_non_nullable
              as int,
      pendingReviews: pendingReviews == freezed
          ? _value.pendingReviews
          : pendingReviews // ignore: cast_nullable_to_non_nullable
              as int,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantDtoCopyWith<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  factory _$RestaurantDtoCopyWith(
          _RestaurantDto value, $Res Function(_RestaurantDto) then) =
      __$RestaurantDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String name,
      String owner,
      double averageRating,
      double highestRating,
      double lowestRating,
      double latestRating,
      int numberOfRatings,
      int sumOfRatings,
      int pendingReviews,
      bool archived});
}

/// @nodoc
class __$RestaurantDtoCopyWithImpl<$Res>
    extends _$RestaurantDtoCopyWithImpl<$Res>
    implements _$RestaurantDtoCopyWith<$Res> {
  __$RestaurantDtoCopyWithImpl(
      _RestaurantDto _value, $Res Function(_RestaurantDto) _then)
      : super(_value, (v) => _then(v as _RestaurantDto));

  @override
  _RestaurantDto get _value => super._value as _RestaurantDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
    Object? latestRating = freezed,
    Object? numberOfRatings = freezed,
    Object? sumOfRatings = freezed,
    Object? pendingReviews = freezed,
    Object? archived = freezed,
  }) {
    return _then(_RestaurantDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      highestRating: highestRating == freezed
          ? _value.highestRating
          : highestRating // ignore: cast_nullable_to_non_nullable
              as double,
      lowestRating: lowestRating == freezed
          ? _value.lowestRating
          : lowestRating // ignore: cast_nullable_to_non_nullable
              as double,
      latestRating: latestRating == freezed
          ? _value.latestRating
          : latestRating // ignore: cast_nullable_to_non_nullable
              as double,
      numberOfRatings: numberOfRatings == freezed
          ? _value.numberOfRatings
          : numberOfRatings // ignore: cast_nullable_to_non_nullable
              as int,
      sumOfRatings: sumOfRatings == freezed
          ? _value.sumOfRatings
          : sumOfRatings // ignore: cast_nullable_to_non_nullable
              as int,
      pendingReviews: pendingReviews == freezed
          ? _value.pendingReviews
          : pendingReviews // ignore: cast_nullable_to_non_nullable
              as int,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RestaurantDto extends _RestaurantDto {
  const _$_RestaurantDto(
      {@JsonKey(ignore: true) this.id,
      required this.name,
      required this.owner,
      required this.averageRating,
      required this.highestRating,
      required this.lowestRating,
      required this.latestRating,
      required this.numberOfRatings,
      required this.sumOfRatings,
      required this.pendingReviews,
      required this.archived})
      : super._();

  factory _$_RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RestaurantDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String name;
  @override
  final String owner;
  @override
  final double averageRating;
  @override
  final double highestRating;
  @override
  final double lowestRating;
  @override
  final double latestRating;
  @override
  final int numberOfRatings;
  @override
  final int sumOfRatings;
  @override
  final int pendingReviews;
  @override
  final bool archived;

  @override
  String toString() {
    return 'RestaurantDto(id: $id, name: $name, owner: $owner, averageRating: $averageRating, highestRating: $highestRating, lowestRating: $lowestRating, latestRating: $latestRating, numberOfRatings: $numberOfRatings, sumOfRatings: $sumOfRatings, pendingReviews: $pendingReviews, archived: $archived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.averageRating, averageRating) ||
                const DeepCollectionEquality()
                    .equals(other.averageRating, averageRating)) &&
            (identical(other.highestRating, highestRating) ||
                const DeepCollectionEquality()
                    .equals(other.highestRating, highestRating)) &&
            (identical(other.lowestRating, lowestRating) ||
                const DeepCollectionEquality()
                    .equals(other.lowestRating, lowestRating)) &&
            (identical(other.latestRating, latestRating) ||
                const DeepCollectionEquality()
                    .equals(other.latestRating, latestRating)) &&
            (identical(other.numberOfRatings, numberOfRatings) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfRatings, numberOfRatings)) &&
            (identical(other.sumOfRatings, sumOfRatings) ||
                const DeepCollectionEquality()
                    .equals(other.sumOfRatings, sumOfRatings)) &&
            (identical(other.pendingReviews, pendingReviews) ||
                const DeepCollectionEquality()
                    .equals(other.pendingReviews, pendingReviews)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(highestRating) ^
      const DeepCollectionEquality().hash(lowestRating) ^
      const DeepCollectionEquality().hash(latestRating) ^
      const DeepCollectionEquality().hash(numberOfRatings) ^
      const DeepCollectionEquality().hash(sumOfRatings) ^
      const DeepCollectionEquality().hash(pendingReviews) ^
      const DeepCollectionEquality().hash(archived);

  @JsonKey(ignore: true)
  @override
  _$RestaurantDtoCopyWith<_RestaurantDto> get copyWith =>
      __$RestaurantDtoCopyWithImpl<_RestaurantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RestaurantDtoToJson(this);
  }
}

abstract class _RestaurantDto extends RestaurantDto {
  const factory _RestaurantDto(
      {@JsonKey(ignore: true) String? id,
      required String name,
      required String owner,
      required double averageRating,
      required double highestRating,
      required double lowestRating,
      required double latestRating,
      required int numberOfRatings,
      required int sumOfRatings,
      required int pendingReviews,
      required bool archived}) = _$_RestaurantDto;
  const _RestaurantDto._() : super._();

  factory _RestaurantDto.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get owner => throw _privateConstructorUsedError;
  @override
  double get averageRating => throw _privateConstructorUsedError;
  @override
  double get highestRating => throw _privateConstructorUsedError;
  @override
  double get lowestRating => throw _privateConstructorUsedError;
  @override
  double get latestRating => throw _privateConstructorUsedError;
  @override
  int get numberOfRatings => throw _privateConstructorUsedError;
  @override
  int get sumOfRatings => throw _privateConstructorUsedError;
  @override
  int get pendingReviews => throw _privateConstructorUsedError;
  @override
  bool get archived => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RestaurantDtoCopyWith<_RestaurantDto> get copyWith =>
      throw _privateConstructorUsedError;
}
