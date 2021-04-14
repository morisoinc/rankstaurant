// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantTearOff {
  const _$RestaurantTearOff();

  _Restaurant call(
      {required UniqueId id,
      required RestaurantName name,
      required UniqueId owner,
      required RestaurantRating averageRating,
      required RestaurantRating highestRating,
      required RestaurantRating lowestRating}) {
    return _Restaurant(
      id: id,
      name: name,
      owner: owner,
      averageRating: averageRating,
      highestRating: highestRating,
      lowestRating: lowestRating,
    );
  }
}

/// @nodoc
const $Restaurant = _$RestaurantTearOff();

/// @nodoc
mixin _$Restaurant {
  UniqueId get id => throw _privateConstructorUsedError;
  RestaurantName get name => throw _privateConstructorUsedError;
  UniqueId get owner => throw _privateConstructorUsedError;
  RestaurantRating get averageRating => throw _privateConstructorUsedError;
  RestaurantRating get highestRating => throw _privateConstructorUsedError;
  RestaurantRating get lowestRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      RestaurantName name,
      UniqueId owner,
      RestaurantRating averageRating,
      RestaurantRating highestRating,
      RestaurantRating lowestRating});
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res> implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  final Restaurant _value;
  // ignore: unused_field
  final $Res Function(Restaurant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RestaurantName,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as RestaurantRating,
      highestRating: highestRating == freezed
          ? _value.highestRating
          : highestRating // ignore: cast_nullable_to_non_nullable
              as RestaurantRating,
      lowestRating: lowestRating == freezed
          ? _value.lowestRating
          : lowestRating // ignore: cast_nullable_to_non_nullable
              as RestaurantRating,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantCopyWith<$Res> implements $RestaurantCopyWith<$Res> {
  factory _$RestaurantCopyWith(
          _Restaurant value, $Res Function(_Restaurant) then) =
      __$RestaurantCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      RestaurantName name,
      UniqueId owner,
      RestaurantRating averageRating,
      RestaurantRating highestRating,
      RestaurantRating lowestRating});
}

/// @nodoc
class __$RestaurantCopyWithImpl<$Res> extends _$RestaurantCopyWithImpl<$Res>
    implements _$RestaurantCopyWith<$Res> {
  __$RestaurantCopyWithImpl(
      _Restaurant _value, $Res Function(_Restaurant) _then)
      : super(_value, (v) => _then(v as _Restaurant));

  @override
  _Restaurant get _value => super._value as _Restaurant;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
  }) {
    return _then(_Restaurant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as RestaurantName,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as RestaurantRating,
      highestRating: highestRating == freezed
          ? _value.highestRating
          : highestRating // ignore: cast_nullable_to_non_nullable
              as RestaurantRating,
      lowestRating: lowestRating == freezed
          ? _value.lowestRating
          : lowestRating // ignore: cast_nullable_to_non_nullable
              as RestaurantRating,
    ));
  }
}

/// @nodoc
class _$_Restaurant extends _Restaurant {
  _$_Restaurant(
      {required this.id,
      required this.name,
      required this.owner,
      required this.averageRating,
      required this.highestRating,
      required this.lowestRating})
      : super._();

  @override
  final UniqueId id;
  @override
  final RestaurantName name;
  @override
  final UniqueId owner;
  @override
  final RestaurantRating averageRating;
  @override
  final RestaurantRating highestRating;
  @override
  final RestaurantRating lowestRating;

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, owner: $owner, averageRating: $averageRating, highestRating: $highestRating, lowestRating: $lowestRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Restaurant &&
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
                    .equals(other.lowestRating, lowestRating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(highestRating) ^
      const DeepCollectionEquality().hash(lowestRating);

  @JsonKey(ignore: true)
  @override
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      __$RestaurantCopyWithImpl<_Restaurant>(this, _$identity);
}

abstract class _Restaurant extends Restaurant {
  factory _Restaurant(
      {required UniqueId id,
      required RestaurantName name,
      required UniqueId owner,
      required RestaurantRating averageRating,
      required RestaurantRating highestRating,
      required RestaurantRating lowestRating}) = _$_Restaurant;
  _Restaurant._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  RestaurantName get name => throw _privateConstructorUsedError;
  @override
  UniqueId get owner => throw _privateConstructorUsedError;
  @override
  RestaurantRating get averageRating => throw _privateConstructorUsedError;
  @override
  RestaurantRating get highestRating => throw _privateConstructorUsedError;
  @override
  RestaurantRating get lowestRating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}
