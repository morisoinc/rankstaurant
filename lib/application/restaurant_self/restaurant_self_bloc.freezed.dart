// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurant_self_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantSelfEventTearOff {
  const _$RestaurantSelfEventTearOff();

  _Initialized initialized(Option<Restaurant> restaurantOption) {
    return _Initialized(
      restaurantOption,
    );
  }

  _Watch watch(Restaurant restaurant) {
    return _Watch(
      restaurant,
    );
  }

  _Received received(
      Either<RestaurantFailure, Restaurant> failureOrRestaurant) {
    return _Received(
      failureOrRestaurant,
    );
  }
}

/// @nodoc
const $RestaurantSelfEvent = _$RestaurantSelfEventTearOff();

/// @nodoc
mixin _$RestaurantSelfEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> restaurantOption) initialized,
    required TResult Function(Restaurant restaurant) watch,
    required TResult Function(
            Either<RestaurantFailure, Restaurant> failureOrRestaurant)
        received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> restaurantOption)? initialized,
    TResult Function(Restaurant restaurant)? watch,
    TResult Function(Either<RestaurantFailure, Restaurant> failureOrRestaurant)?
        received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantSelfEventCopyWith<$Res> {
  factory $RestaurantSelfEventCopyWith(
          RestaurantSelfEvent value, $Res Function(RestaurantSelfEvent) then) =
      _$RestaurantSelfEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantSelfEventCopyWithImpl<$Res>
    implements $RestaurantSelfEventCopyWith<$Res> {
  _$RestaurantSelfEventCopyWithImpl(this._value, this._then);

  final RestaurantSelfEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantSelfEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Restaurant> restaurantOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$RestaurantSelfEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? restaurantOption = freezed,
  }) {
    return _then(_Initialized(
      restaurantOption == freezed
          ? _value.restaurantOption
          : restaurantOption // ignore: cast_nullable_to_non_nullable
              as Option<Restaurant>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.restaurantOption);

  @override
  final Option<Restaurant> restaurantOption;

  @override
  String toString() {
    return 'RestaurantSelfEvent.initialized(restaurantOption: $restaurantOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.restaurantOption, restaurantOption) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantOption, restaurantOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(restaurantOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> restaurantOption) initialized,
    required TResult Function(Restaurant restaurant) watch,
    required TResult Function(
            Either<RestaurantFailure, Restaurant> failureOrRestaurant)
        received,
  }) {
    return initialized(restaurantOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> restaurantOption)? initialized,
    TResult Function(Restaurant restaurant)? watch,
    TResult Function(Either<RestaurantFailure, Restaurant> failureOrRestaurant)?
        received,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(restaurantOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements RestaurantSelfEvent {
  const factory _Initialized(Option<Restaurant> restaurantOption) =
      _$_Initialized;

  Option<Restaurant> get restaurantOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchCopyWith<$Res> {
  factory _$WatchCopyWith(_Watch value, $Res Function(_Watch) then) =
      __$WatchCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$WatchCopyWithImpl<$Res> extends _$RestaurantSelfEventCopyWithImpl<$Res>
    implements _$WatchCopyWith<$Res> {
  __$WatchCopyWithImpl(_Watch _value, $Res Function(_Watch) _then)
      : super(_value, (v) => _then(v as _Watch));

  @override
  _Watch get _value => super._value as _Watch;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_Watch(
      restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc
class _$_Watch implements _Watch {
  const _$_Watch(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'RestaurantSelfEvent.watch(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Watch &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  _$WatchCopyWith<_Watch> get copyWith =>
      __$WatchCopyWithImpl<_Watch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> restaurantOption) initialized,
    required TResult Function(Restaurant restaurant) watch,
    required TResult Function(
            Either<RestaurantFailure, Restaurant> failureOrRestaurant)
        received,
  }) {
    return watch(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> restaurantOption)? initialized,
    TResult Function(Restaurant restaurant)? watch,
    TResult Function(Either<RestaurantFailure, Restaurant> failureOrRestaurant)?
        received,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
  }) {
    return watch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) {
    if (watch != null) {
      return watch(this);
    }
    return orElse();
  }
}

abstract class _Watch implements RestaurantSelfEvent {
  const factory _Watch(Restaurant restaurant) = _$_Watch;

  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchCopyWith<_Watch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReceivedCopyWith<$Res> {
  factory _$ReceivedCopyWith(_Received value, $Res Function(_Received) then) =
      __$ReceivedCopyWithImpl<$Res>;
  $Res call({Either<RestaurantFailure, Restaurant> failureOrRestaurant});
}

/// @nodoc
class __$ReceivedCopyWithImpl<$Res>
    extends _$RestaurantSelfEventCopyWithImpl<$Res>
    implements _$ReceivedCopyWith<$Res> {
  __$ReceivedCopyWithImpl(_Received _value, $Res Function(_Received) _then)
      : super(_value, (v) => _then(v as _Received));

  @override
  _Received get _value => super._value as _Received;

  @override
  $Res call({
    Object? failureOrRestaurant = freezed,
  }) {
    return _then(_Received(
      failureOrRestaurant == freezed
          ? _value.failureOrRestaurant
          : failureOrRestaurant // ignore: cast_nullable_to_non_nullable
              as Either<RestaurantFailure, Restaurant>,
    ));
  }
}

/// @nodoc
class _$_Received implements _Received {
  const _$_Received(this.failureOrRestaurant);

  @override
  final Either<RestaurantFailure, Restaurant> failureOrRestaurant;

  @override
  String toString() {
    return 'RestaurantSelfEvent.received(failureOrRestaurant: $failureOrRestaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Received &&
            (identical(other.failureOrRestaurant, failureOrRestaurant) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRestaurant, failureOrRestaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRestaurant);

  @JsonKey(ignore: true)
  @override
  _$ReceivedCopyWith<_Received> get copyWith =>
      __$ReceivedCopyWithImpl<_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> restaurantOption) initialized,
    required TResult Function(Restaurant restaurant) watch,
    required TResult Function(
            Either<RestaurantFailure, Restaurant> failureOrRestaurant)
        received,
  }) {
    return received(failureOrRestaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> restaurantOption)? initialized,
    TResult Function(Restaurant restaurant)? watch,
    TResult Function(Either<RestaurantFailure, Restaurant> failureOrRestaurant)?
        received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(failureOrRestaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Watch value) watch,
    required TResult Function(_Received value) received,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Watch value)? watch,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _Received implements RestaurantSelfEvent {
  const factory _Received(
      Either<RestaurantFailure, Restaurant> failureOrRestaurant) = _$_Received;

  Either<RestaurantFailure, Restaurant> get failureOrRestaurant =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReceivedCopyWith<_Received> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RestaurantSelfStateTearOff {
  const _$RestaurantSelfStateTearOff();

  _RestaurantSelfState call({required Restaurant restaurant}) {
    return _RestaurantSelfState(
      restaurant: restaurant,
    );
  }

  _Loaded loaded(Restaurant restaurant) {
    return _Loaded(
      restaurant,
    );
  }

  _Fail fail(RestaurantFailure failure) {
    return _Fail(
      failure,
    );
  }
}

/// @nodoc
const $RestaurantSelfState = _$RestaurantSelfStateTearOff();

/// @nodoc
mixin _$RestaurantSelfState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function(Restaurant restaurant) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function(Restaurant restaurant)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value)? $default, {
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantSelfStateCopyWith<$Res> {
  factory $RestaurantSelfStateCopyWith(
          RestaurantSelfState value, $Res Function(RestaurantSelfState) then) =
      _$RestaurantSelfStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantSelfStateCopyWithImpl<$Res>
    implements $RestaurantSelfStateCopyWith<$Res> {
  _$RestaurantSelfStateCopyWithImpl(this._value, this._then);

  final RestaurantSelfState _value;
  // ignore: unused_field
  final $Res Function(RestaurantSelfState) _then;
}

/// @nodoc
abstract class _$RestaurantSelfStateCopyWith<$Res> {
  factory _$RestaurantSelfStateCopyWith(_RestaurantSelfState value,
          $Res Function(_RestaurantSelfState) then) =
      __$RestaurantSelfStateCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$RestaurantSelfStateCopyWithImpl<$Res>
    extends _$RestaurantSelfStateCopyWithImpl<$Res>
    implements _$RestaurantSelfStateCopyWith<$Res> {
  __$RestaurantSelfStateCopyWithImpl(
      _RestaurantSelfState _value, $Res Function(_RestaurantSelfState) _then)
      : super(_value, (v) => _then(v as _RestaurantSelfState));

  @override
  _RestaurantSelfState get _value => super._value as _RestaurantSelfState;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_RestaurantSelfState(
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc
class _$_RestaurantSelfState implements _RestaurantSelfState {
  const _$_RestaurantSelfState({required this.restaurant});

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'RestaurantSelfState(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantSelfState &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  _$RestaurantSelfStateCopyWith<_RestaurantSelfState> get copyWith =>
      __$RestaurantSelfStateCopyWithImpl<_RestaurantSelfState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function(Restaurant restaurant) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) {
    return $default(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function(Restaurant restaurant)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value)? $default, {
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _RestaurantSelfState implements RestaurantSelfState {
  const factory _RestaurantSelfState({required Restaurant restaurant}) =
      _$_RestaurantSelfState;

  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RestaurantSelfStateCopyWith<_RestaurantSelfState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$RestaurantSelfStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_Loaded(
      restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  _$_Loaded(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'RestaurantSelfState.loaded(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function(Restaurant restaurant) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) {
    return loaded(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function(Restaurant restaurant)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value)? $default, {
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RestaurantSelfState {
  factory _Loaded(Restaurant restaurant) = _$_Loaded;

  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailCopyWith<$Res> {
  factory _$FailCopyWith(_Fail value, $Res Function(_Fail) then) =
      __$FailCopyWithImpl<$Res>;
  $Res call({RestaurantFailure failure});

  $RestaurantFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailCopyWithImpl<$Res> extends _$RestaurantSelfStateCopyWithImpl<$Res>
    implements _$FailCopyWith<$Res> {
  __$FailCopyWithImpl(_Fail _value, $Res Function(_Fail) _then)
      : super(_value, (v) => _then(v as _Fail));

  @override
  _Fail get _value => super._value as _Fail;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Fail(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RestaurantFailure,
    ));
  }

  @override
  $RestaurantFailureCopyWith<$Res> get failure {
    return $RestaurantFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Fail implements _Fail {
  _$_Fail(this.failure);

  @override
  final RestaurantFailure failure;

  @override
  String toString() {
    return 'RestaurantSelfState.fail(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fail &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailCopyWith<_Fail> get copyWith =>
      __$FailCopyWithImpl<_Fail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function(Restaurant restaurant) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) {
    return fail(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function(Restaurant restaurant)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RestaurantSelfState value)? $default, {
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements RestaurantSelfState {
  factory _Fail(RestaurantFailure failure) = _$_Fail;

  RestaurantFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailCopyWith<_Fail> get copyWith => throw _privateConstructorUsedError;
}
