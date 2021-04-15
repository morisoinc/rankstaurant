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

  _LoadReviews loadReviews() {
    return const _LoadReviews();
  }
}

/// @nodoc
const $RestaurantSelfEvent = _$RestaurantSelfEventTearOff();

/// @nodoc
mixin _$RestaurantSelfEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> restaurantOption) initialized,
    required TResult Function() loadReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> restaurantOption)? initialized,
    TResult Function()? loadReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadReviews value) loadReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadReviews value)? loadReviews,
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
    required TResult Function() loadReviews,
  }) {
    return initialized(restaurantOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> restaurantOption)? initialized,
    TResult Function()? loadReviews,
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
    required TResult Function(_LoadReviews value) loadReviews,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadReviews value)? loadReviews,
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
abstract class _$LoadReviewsCopyWith<$Res> {
  factory _$LoadReviewsCopyWith(
          _LoadReviews value, $Res Function(_LoadReviews) then) =
      __$LoadReviewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadReviewsCopyWithImpl<$Res>
    extends _$RestaurantSelfEventCopyWithImpl<$Res>
    implements _$LoadReviewsCopyWith<$Res> {
  __$LoadReviewsCopyWithImpl(
      _LoadReviews _value, $Res Function(_LoadReviews) _then)
      : super(_value, (v) => _then(v as _LoadReviews));

  @override
  _LoadReviews get _value => super._value as _LoadReviews;
}

/// @nodoc
class _$_LoadReviews implements _LoadReviews {
  const _$_LoadReviews();

  @override
  String toString() {
    return 'RestaurantSelfEvent.loadReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadReviews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> restaurantOption) initialized,
    required TResult Function() loadReviews,
  }) {
    return loadReviews();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> restaurantOption)? initialized,
    TResult Function()? loadReviews,
    required TResult orElse(),
  }) {
    if (loadReviews != null) {
      return loadReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_LoadReviews value) loadReviews,
  }) {
    return loadReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_LoadReviews value)? loadReviews,
    required TResult orElse(),
  }) {
    if (loadReviews != null) {
      return loadReviews(this);
    }
    return orElse();
  }
}

abstract class _LoadReviews implements RestaurantSelfEvent {
  const factory _LoadReviews() = _$_LoadReviews;
}

/// @nodoc
class _$RestaurantSelfStateTearOff {
  const _$RestaurantSelfStateTearOff();

  _RestaurantSelfState call({required Restaurant restaurant}) {
    return _RestaurantSelfState(
      restaurant: restaurant,
    );
  }
}

/// @nodoc
const $RestaurantSelfState = _$RestaurantSelfStateTearOff();

/// @nodoc
mixin _$RestaurantSelfState {
  Restaurant get restaurant => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantSelfStateCopyWith<RestaurantSelfState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantSelfStateCopyWith<$Res> {
  factory $RestaurantSelfStateCopyWith(
          RestaurantSelfState value, $Res Function(RestaurantSelfState) then) =
      _$RestaurantSelfStateCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$RestaurantSelfStateCopyWithImpl<$Res>
    implements $RestaurantSelfStateCopyWith<$Res> {
  _$RestaurantSelfStateCopyWithImpl(this._value, this._then);

  final RestaurantSelfState _value;
  // ignore: unused_field
  final $Res Function(RestaurantSelfState) _then;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$RestaurantSelfStateCopyWith<$Res>
    implements $RestaurantSelfStateCopyWith<$Res> {
  factory _$RestaurantSelfStateCopyWith(_RestaurantSelfState value,
          $Res Function(_RestaurantSelfState) then) =
      __$RestaurantSelfStateCopyWithImpl<$Res>;
  @override
  $Res call({Restaurant restaurant});

  @override
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
}

abstract class _RestaurantSelfState implements RestaurantSelfState {
  const factory _RestaurantSelfState({required Restaurant restaurant}) =
      _$_RestaurantSelfState;

  @override
  Restaurant get restaurant => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RestaurantSelfStateCopyWith<_RestaurantSelfState> get copyWith =>
      throw _privateConstructorUsedError;
}
