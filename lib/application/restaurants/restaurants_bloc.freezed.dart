// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurants_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantsEventTearOff {
  const _$RestaurantsEventTearOff();

  _WatchAll watchAll() {
    return const _WatchAll();
  }

  _WatchOwn watchOwn() {
    return const _WatchOwn();
  }

  _RestaurantsReceived restaurantsReceived(
      Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants) {
    return _RestaurantsReceived(
      failureOrRestaurants,
    );
  }
}

/// @nodoc
const $RestaurantsEvent = _$RestaurantsEventTearOff();

/// @nodoc
mixin _$RestaurantsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAll,
    required TResult Function() watchOwn,
    required TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)
        restaurantsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchOwn,
    TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)?
        restaurantsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchOwn value) watchOwn,
    required TResult Function(_RestaurantsReceived value) restaurantsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchOwn value)? watchOwn,
    TResult Function(_RestaurantsReceived value)? restaurantsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsEventCopyWith<$Res> {
  factory $RestaurantsEventCopyWith(
          RestaurantsEvent value, $Res Function(RestaurantsEvent) then) =
      _$RestaurantsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantsEventCopyWithImpl<$Res>
    implements $RestaurantsEventCopyWith<$Res> {
  _$RestaurantsEventCopyWithImpl(this._value, this._then);

  final RestaurantsEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantsEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res> extends _$RestaurantsEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;
}

/// @nodoc
class _$_WatchAll implements _WatchAll {
  const _$_WatchAll();

  @override
  String toString() {
    return 'RestaurantsEvent.watchAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAll,
    required TResult Function() watchOwn,
    required TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)
        restaurantsReceived,
  }) {
    return watchAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchOwn,
    TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)?
        restaurantsReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchOwn value) watchOwn,
    required TResult Function(_RestaurantsReceived value) restaurantsReceived,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchOwn value)? watchOwn,
    TResult Function(_RestaurantsReceived value)? restaurantsReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements RestaurantsEvent {
  const factory _WatchAll() = _$_WatchAll;
}

/// @nodoc
abstract class _$WatchOwnCopyWith<$Res> {
  factory _$WatchOwnCopyWith(_WatchOwn value, $Res Function(_WatchOwn) then) =
      __$WatchOwnCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchOwnCopyWithImpl<$Res> extends _$RestaurantsEventCopyWithImpl<$Res>
    implements _$WatchOwnCopyWith<$Res> {
  __$WatchOwnCopyWithImpl(_WatchOwn _value, $Res Function(_WatchOwn) _then)
      : super(_value, (v) => _then(v as _WatchOwn));

  @override
  _WatchOwn get _value => super._value as _WatchOwn;
}

/// @nodoc
class _$_WatchOwn implements _WatchOwn {
  const _$_WatchOwn();

  @override
  String toString() {
    return 'RestaurantsEvent.watchOwn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchOwn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAll,
    required TResult Function() watchOwn,
    required TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)
        restaurantsReceived,
  }) {
    return watchOwn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchOwn,
    TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)?
        restaurantsReceived,
    required TResult orElse(),
  }) {
    if (watchOwn != null) {
      return watchOwn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchOwn value) watchOwn,
    required TResult Function(_RestaurantsReceived value) restaurantsReceived,
  }) {
    return watchOwn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchOwn value)? watchOwn,
    TResult Function(_RestaurantsReceived value)? restaurantsReceived,
    required TResult orElse(),
  }) {
    if (watchOwn != null) {
      return watchOwn(this);
    }
    return orElse();
  }
}

abstract class _WatchOwn implements RestaurantsEvent {
  const factory _WatchOwn() = _$_WatchOwn;
}

/// @nodoc
abstract class _$RestaurantsReceivedCopyWith<$Res> {
  factory _$RestaurantsReceivedCopyWith(_RestaurantsReceived value,
          $Res Function(_RestaurantsReceived) then) =
      __$RestaurantsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants});
}

/// @nodoc
class __$RestaurantsReceivedCopyWithImpl<$Res>
    extends _$RestaurantsEventCopyWithImpl<$Res>
    implements _$RestaurantsReceivedCopyWith<$Res> {
  __$RestaurantsReceivedCopyWithImpl(
      _RestaurantsReceived _value, $Res Function(_RestaurantsReceived) _then)
      : super(_value, (v) => _then(v as _RestaurantsReceived));

  @override
  _RestaurantsReceived get _value => super._value as _RestaurantsReceived;

  @override
  $Res call({
    Object? failureOrRestaurants = freezed,
  }) {
    return _then(_RestaurantsReceived(
      failureOrRestaurants == freezed
          ? _value.failureOrRestaurants
          : failureOrRestaurants // ignore: cast_nullable_to_non_nullable
              as Either<RestaurantFailure, KtList<Restaurant>>,
    ));
  }
}

/// @nodoc
class _$_RestaurantsReceived implements _RestaurantsReceived {
  const _$_RestaurantsReceived(this.failureOrRestaurants);

  @override
  final Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants;

  @override
  String toString() {
    return 'RestaurantsEvent.restaurantsReceived(failureOrRestaurants: $failureOrRestaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantsReceived &&
            (identical(other.failureOrRestaurants, failureOrRestaurants) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRestaurants, failureOrRestaurants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRestaurants);

  @JsonKey(ignore: true)
  @override
  _$RestaurantsReceivedCopyWith<_RestaurantsReceived> get copyWith =>
      __$RestaurantsReceivedCopyWithImpl<_RestaurantsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAll,
    required TResult Function() watchOwn,
    required TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)
        restaurantsReceived,
  }) {
    return restaurantsReceived(failureOrRestaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAll,
    TResult Function()? watchOwn,
    TResult Function(
            Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants)?
        restaurantsReceived,
    required TResult orElse(),
  }) {
    if (restaurantsReceived != null) {
      return restaurantsReceived(failureOrRestaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_WatchOwn value) watchOwn,
    required TResult Function(_RestaurantsReceived value) restaurantsReceived,
  }) {
    return restaurantsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_WatchOwn value)? watchOwn,
    TResult Function(_RestaurantsReceived value)? restaurantsReceived,
    required TResult orElse(),
  }) {
    if (restaurantsReceived != null) {
      return restaurantsReceived(this);
    }
    return orElse();
  }
}

abstract class _RestaurantsReceived implements RestaurantsEvent {
  const factory _RestaurantsReceived(
          Either<RestaurantFailure, KtList<Restaurant>> failureOrRestaurants) =
      _$_RestaurantsReceived;

  Either<RestaurantFailure, KtList<Restaurant>> get failureOrRestaurants =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RestaurantsReceivedCopyWith<_RestaurantsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RestaurantsStateTearOff {
  const _$RestaurantsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(KtList<Restaurant> restaurants) {
    return _Loaded(
      restaurants,
    );
  }

  _Failure fail(RestaurantFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $RestaurantsState = _$RestaurantsStateTearOff();

/// @nodoc
mixin _$RestaurantsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Restaurant> restaurants) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Restaurant> restaurants)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsStateCopyWith<$Res> {
  factory $RestaurantsStateCopyWith(
          RestaurantsState value, $Res Function(RestaurantsState) then) =
      _$RestaurantsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantsStateCopyWithImpl<$Res>
    implements $RestaurantsStateCopyWith<$Res> {
  _$RestaurantsStateCopyWithImpl(this._value, this._then);

  final RestaurantsState _value;
  // ignore: unused_field
  final $Res Function(RestaurantsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RestaurantsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RestaurantsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Restaurant> restaurants) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Restaurant> restaurants)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? fail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RestaurantsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$RestaurantsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RestaurantsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Restaurant> restaurants) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Restaurant> restaurants)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RestaurantsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({KtList<Restaurant> restaurants});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$RestaurantsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? restaurants = freezed,
  }) {
    return _then(_Loaded(
      restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as KtList<Restaurant>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.restaurants);

  @override
  final KtList<Restaurant> restaurants;

  @override
  String toString() {
    return 'RestaurantsState.loaded(restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.restaurants, restaurants) ||
                const DeepCollectionEquality()
                    .equals(other.restaurants, restaurants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurants);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Restaurant> restaurants) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) {
    return loaded(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Restaurant> restaurants)? loaded,
    TResult Function(RestaurantFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(restaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RestaurantsState {
  const factory _Loaded(KtList<Restaurant> restaurants) = _$_Loaded;

  KtList<Restaurant> get restaurants => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({RestaurantFailure failure});

  $RestaurantFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$RestaurantsStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
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
class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final RestaurantFailure failure;

  @override
  String toString() {
    return 'RestaurantsState.fail(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(KtList<Restaurant> restaurants) loaded,
    required TResult Function(RestaurantFailure failure) fail,
  }) {
    return fail(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(KtList<Restaurant> restaurants)? loaded,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? fail,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RestaurantsState {
  const factory _Failure(RestaurantFailure failure) = _$_Failure;

  RestaurantFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
