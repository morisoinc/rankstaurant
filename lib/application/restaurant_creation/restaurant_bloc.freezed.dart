// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantStateTearOff {
  const _$RestaurantStateTearOff();

  _RestaurantState call(
      {required RestaurantName restaurantName,
      required UniqueId owner,
      required RestaurantRating averageRating,
      required RestaurantRating highestRating,
      required RestaurantRating lowestRating,
      required Option<Either<RestaurantFailure, Restaurant>>
          restaurantFailureOrSuccessOption}) {
    return _RestaurantState(
      restaurantName: restaurantName,
      owner: owner,
      averageRating: averageRating,
      highestRating: highestRating,
      lowestRating: lowestRating,
      restaurantFailureOrSuccessOption: restaurantFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RestaurantState = _$RestaurantStateTearOff();

/// @nodoc
mixin _$RestaurantState {
  RestaurantName get restaurantName => throw _privateConstructorUsedError;
  UniqueId get owner => throw _privateConstructorUsedError;
  RestaurantRating get averageRating => throw _privateConstructorUsedError;
  RestaurantRating get highestRating => throw _privateConstructorUsedError;
  RestaurantRating get lowestRating => throw _privateConstructorUsedError;
  Option<Either<RestaurantFailure, Restaurant>>
      get restaurantFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantStateCopyWith<RestaurantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantStateCopyWith<$Res> {
  factory $RestaurantStateCopyWith(
          RestaurantState value, $Res Function(RestaurantState) then) =
      _$RestaurantStateCopyWithImpl<$Res>;
  $Res call(
      {RestaurantName restaurantName,
      UniqueId owner,
      RestaurantRating averageRating,
      RestaurantRating highestRating,
      RestaurantRating lowestRating,
      Option<Either<RestaurantFailure, Restaurant>>
          restaurantFailureOrSuccessOption});
}

/// @nodoc
class _$RestaurantStateCopyWithImpl<$Res>
    implements $RestaurantStateCopyWith<$Res> {
  _$RestaurantStateCopyWithImpl(this._value, this._then);

  final RestaurantState _value;
  // ignore: unused_field
  final $Res Function(RestaurantState) _then;

  @override
  $Res call({
    Object? restaurantName = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
    Object? restaurantFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
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
      restaurantFailureOrSuccessOption: restaurantFailureOrSuccessOption ==
              freezed
          ? _value.restaurantFailureOrSuccessOption
          : restaurantFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RestaurantFailure, Restaurant>>,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantStateCopyWith<$Res>
    implements $RestaurantStateCopyWith<$Res> {
  factory _$RestaurantStateCopyWith(
          _RestaurantState value, $Res Function(_RestaurantState) then) =
      __$RestaurantStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RestaurantName restaurantName,
      UniqueId owner,
      RestaurantRating averageRating,
      RestaurantRating highestRating,
      RestaurantRating lowestRating,
      Option<Either<RestaurantFailure, Restaurant>>
          restaurantFailureOrSuccessOption});
}

/// @nodoc
class __$RestaurantStateCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$RestaurantStateCopyWith<$Res> {
  __$RestaurantStateCopyWithImpl(
      _RestaurantState _value, $Res Function(_RestaurantState) _then)
      : super(_value, (v) => _then(v as _RestaurantState));

  @override
  _RestaurantState get _value => super._value as _RestaurantState;

  @override
  $Res call({
    Object? restaurantName = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
    Object? restaurantFailureOrSuccessOption = freezed,
  }) {
    return _then(_RestaurantState(
      restaurantName: restaurantName == freezed
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
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
      restaurantFailureOrSuccessOption: restaurantFailureOrSuccessOption ==
              freezed
          ? _value.restaurantFailureOrSuccessOption
          : restaurantFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RestaurantFailure, Restaurant>>,
    ));
  }
}

/// @nodoc
class _$_RestaurantState implements _RestaurantState {
  const _$_RestaurantState(
      {required this.restaurantName,
      required this.owner,
      required this.averageRating,
      required this.highestRating,
      required this.lowestRating,
      required this.restaurantFailureOrSuccessOption});

  @override
  final RestaurantName restaurantName;
  @override
  final UniqueId owner;
  @override
  final RestaurantRating averageRating;
  @override
  final RestaurantRating highestRating;
  @override
  final RestaurantRating lowestRating;
  @override
  final Option<Either<RestaurantFailure, Restaurant>>
      restaurantFailureOrSuccessOption;

  @override
  String toString() {
    return 'RestaurantState(restaurantName: $restaurantName, owner: $owner, averageRating: $averageRating, highestRating: $highestRating, lowestRating: $lowestRating, restaurantFailureOrSuccessOption: $restaurantFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantState &&
            (identical(other.restaurantName, restaurantName) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantName, restaurantName)) &&
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
            (identical(other.restaurantFailureOrSuccessOption,
                    restaurantFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.restaurantFailureOrSuccessOption,
                    restaurantFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(restaurantName) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(highestRating) ^
      const DeepCollectionEquality().hash(lowestRating) ^
      const DeepCollectionEquality().hash(restaurantFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RestaurantStateCopyWith<_RestaurantState> get copyWith =>
      __$RestaurantStateCopyWithImpl<_RestaurantState>(this, _$identity);
}

abstract class _RestaurantState implements RestaurantState {
  const factory _RestaurantState(
      {required RestaurantName restaurantName,
      required UniqueId owner,
      required RestaurantRating averageRating,
      required RestaurantRating highestRating,
      required RestaurantRating lowestRating,
      required Option<Either<RestaurantFailure, Restaurant>>
          restaurantFailureOrSuccessOption}) = _$_RestaurantState;

  @override
  RestaurantName get restaurantName => throw _privateConstructorUsedError;
  @override
  UniqueId get owner => throw _privateConstructorUsedError;
  @override
  RestaurantRating get averageRating => throw _privateConstructorUsedError;
  @override
  RestaurantRating get highestRating => throw _privateConstructorUsedError;
  @override
  RestaurantRating get lowestRating => throw _privateConstructorUsedError;
  @override
  Option<Either<RestaurantFailure, Restaurant>>
      get restaurantFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RestaurantStateCopyWith<_RestaurantState> get copyWith =>
      throw _privateConstructorUsedError;
}
