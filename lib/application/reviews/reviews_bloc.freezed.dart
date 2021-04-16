// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewsEventTearOff {
  const _$ReviewsEventTearOff();

  _WatchAll watchAll(Restaurant restaurant) {
    return _WatchAll(
      restaurant,
    );
  }

  _ReviewsReceived reviewsReceived(
      Either<ReviewFailure, KtList<Review>> failureOrReviews) {
    return _ReviewsReceived(
      failureOrReviews,
    );
  }
}

/// @nodoc
const $ReviewsEvent = _$ReviewsEventTearOff();

/// @nodoc
mixin _$ReviewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Restaurant restaurant) watchAll,
    required TResult Function(
            Either<ReviewFailure, KtList<Review>> failureOrReviews)
        reviewsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Restaurant restaurant)? watchAll,
    TResult Function(Either<ReviewFailure, KtList<Review>> failureOrReviews)?
        reviewsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_ReviewsReceived value) reviewsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_ReviewsReceived value)? reviewsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsEventCopyWith<$Res> {
  factory $ReviewsEventCopyWith(
          ReviewsEvent value, $Res Function(ReviewsEvent) then) =
      _$ReviewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewsEventCopyWithImpl<$Res> implements $ReviewsEventCopyWith<$Res> {
  _$ReviewsEventCopyWithImpl(this._value, this._then);

  final ReviewsEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewsEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res> extends _$ReviewsEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_WatchAll(
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
class _$_WatchAll implements _WatchAll {
  const _$_WatchAll(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'ReviewsEvent.watchAll(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAll &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      __$WatchAllCopyWithImpl<_WatchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Restaurant restaurant) watchAll,
    required TResult Function(
            Either<ReviewFailure, KtList<Review>> failureOrReviews)
        reviewsReceived,
  }) {
    return watchAll(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Restaurant restaurant)? watchAll,
    TResult Function(Either<ReviewFailure, KtList<Review>> failureOrReviews)?
        reviewsReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_ReviewsReceived value) reviewsReceived,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_ReviewsReceived value)? reviewsReceived,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements ReviewsEvent {
  const factory _WatchAll(Restaurant restaurant) = _$_WatchAll;

  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReviewsReceivedCopyWith<$Res> {
  factory _$ReviewsReceivedCopyWith(
          _ReviewsReceived value, $Res Function(_ReviewsReceived) then) =
      __$ReviewsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ReviewFailure, KtList<Review>> failureOrReviews});
}

/// @nodoc
class __$ReviewsReceivedCopyWithImpl<$Res>
    extends _$ReviewsEventCopyWithImpl<$Res>
    implements _$ReviewsReceivedCopyWith<$Res> {
  __$ReviewsReceivedCopyWithImpl(
      _ReviewsReceived _value, $Res Function(_ReviewsReceived) _then)
      : super(_value, (v) => _then(v as _ReviewsReceived));

  @override
  _ReviewsReceived get _value => super._value as _ReviewsReceived;

  @override
  $Res call({
    Object? failureOrReviews = freezed,
  }) {
    return _then(_ReviewsReceived(
      failureOrReviews == freezed
          ? _value.failureOrReviews
          : failureOrReviews // ignore: cast_nullable_to_non_nullable
              as Either<ReviewFailure, KtList<Review>>,
    ));
  }
}

/// @nodoc
class _$_ReviewsReceived implements _ReviewsReceived {
  const _$_ReviewsReceived(this.failureOrReviews);

  @override
  final Either<ReviewFailure, KtList<Review>> failureOrReviews;

  @override
  String toString() {
    return 'ReviewsEvent.reviewsReceived(failureOrReviews: $failureOrReviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsReceived &&
            (identical(other.failureOrReviews, failureOrReviews) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrReviews, failureOrReviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrReviews);

  @JsonKey(ignore: true)
  @override
  _$ReviewsReceivedCopyWith<_ReviewsReceived> get copyWith =>
      __$ReviewsReceivedCopyWithImpl<_ReviewsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Restaurant restaurant) watchAll,
    required TResult Function(
            Either<ReviewFailure, KtList<Review>> failureOrReviews)
        reviewsReceived,
  }) {
    return reviewsReceived(failureOrReviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Restaurant restaurant)? watchAll,
    TResult Function(Either<ReviewFailure, KtList<Review>> failureOrReviews)?
        reviewsReceived,
    required TResult orElse(),
  }) {
    if (reviewsReceived != null) {
      return reviewsReceived(failureOrReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_ReviewsReceived value) reviewsReceived,
  }) {
    return reviewsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_ReviewsReceived value)? reviewsReceived,
    required TResult orElse(),
  }) {
    if (reviewsReceived != null) {
      return reviewsReceived(this);
    }
    return orElse();
  }
}

abstract class _ReviewsReceived implements ReviewsEvent {
  const factory _ReviewsReceived(
          Either<ReviewFailure, KtList<Review>> failureOrReviews) =
      _$_ReviewsReceived;

  Either<ReviewFailure, KtList<Review>> get failureOrReviews =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReviewsReceivedCopyWith<_ReviewsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReviewsStateTearOff {
  const _$ReviewsStateTearOff();

  _ReviewsState call({required Restaurant restaurant}) {
    return _ReviewsState(
      restaurant: restaurant,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(KtList<Review> reviews) {
    return _Loaded(
      reviews,
    );
  }

  _Failure fail(ReviewFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $ReviewsState = _$ReviewsStateTearOff();

/// @nodoc
mixin _$ReviewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function() loading,
    required TResult Function(KtList<Review> reviews) loaded,
    required TResult Function(ReviewFailure failure) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function()? loading,
    TResult Function(KtList<Review> reviews)? loaded,
    TResult Function(ReviewFailure failure)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewsState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsStateCopyWith<$Res> {
  factory $ReviewsStateCopyWith(
          ReviewsState value, $Res Function(ReviewsState) then) =
      _$ReviewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewsStateCopyWithImpl<$Res> implements $ReviewsStateCopyWith<$Res> {
  _$ReviewsStateCopyWithImpl(this._value, this._then);

  final ReviewsState _value;
  // ignore: unused_field
  final $Res Function(ReviewsState) _then;
}

/// @nodoc
abstract class _$ReviewsStateCopyWith<$Res> {
  factory _$ReviewsStateCopyWith(
          _ReviewsState value, $Res Function(_ReviewsState) then) =
      __$ReviewsStateCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$ReviewsStateCopyWithImpl<$Res> extends _$ReviewsStateCopyWithImpl<$Res>
    implements _$ReviewsStateCopyWith<$Res> {
  __$ReviewsStateCopyWithImpl(
      _ReviewsState _value, $Res Function(_ReviewsState) _then)
      : super(_value, (v) => _then(v as _ReviewsState));

  @override
  _ReviewsState get _value => super._value as _ReviewsState;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_ReviewsState(
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
class _$_ReviewsState implements _ReviewsState {
  const _$_ReviewsState({required this.restaurant});

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'ReviewsState(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewsState &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  _$ReviewsStateCopyWith<_ReviewsState> get copyWith =>
      __$ReviewsStateCopyWithImpl<_ReviewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function() loading,
    required TResult Function(KtList<Review> reviews) loaded,
    required TResult Function(ReviewFailure failure) fail,
  }) {
    return $default(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function()? loading,
    TResult Function(KtList<Review> reviews)? loaded,
    TResult Function(ReviewFailure failure)? fail,
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
    TResult Function(_ReviewsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewsState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? fail,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ReviewsState implements ReviewsState {
  const factory _ReviewsState({required Restaurant restaurant}) =
      _$_ReviewsState;

  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReviewsStateCopyWith<_ReviewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ReviewsStateCopyWithImpl<$Res>
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
    return 'ReviewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function() loading,
    required TResult Function(KtList<Review> reviews) loaded,
    required TResult Function(ReviewFailure failure) fail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function()? loading,
    TResult Function(KtList<Review> reviews)? loaded,
    TResult Function(ReviewFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewsState value)? $default, {
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

abstract class _Loading implements ReviewsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({KtList<Review> reviews});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ReviewsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? reviews = freezed,
  }) {
    return _then(_Loaded(
      reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as KtList<Review>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.reviews);

  @override
  final KtList<Review> reviews;

  @override
  String toString() {
    return 'ReviewsState.loaded(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.reviews, reviews) ||
                const DeepCollectionEquality().equals(other.reviews, reviews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reviews);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function() loading,
    required TResult Function(KtList<Review> reviews) loaded,
    required TResult Function(ReviewFailure failure) fail,
  }) {
    return loaded(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function()? loading,
    TResult Function(KtList<Review> reviews)? loaded,
    TResult Function(ReviewFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ReviewsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewsState value)? $default, {
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

abstract class _Loaded implements ReviewsState {
  const factory _Loaded(KtList<Review> reviews) = _$_Loaded;

  KtList<Review> get reviews => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ReviewFailure failure});

  $ReviewFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ReviewsStateCopyWithImpl<$Res>
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
              as ReviewFailure,
    ));
  }

  @override
  $ReviewFailureCopyWith<$Res> get failure {
    return $ReviewFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final ReviewFailure failure;

  @override
  String toString() {
    return 'ReviewsState.fail(failure: $failure)';
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
  TResult when<TResult extends Object?>(
    TResult Function(Restaurant restaurant) $default, {
    required TResult Function() loading,
    required TResult Function(KtList<Review> reviews) loaded,
    required TResult Function(ReviewFailure failure) fail,
  }) {
    return fail(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Restaurant restaurant)? $default, {
    TResult Function()? loading,
    TResult Function(KtList<Review> reviews)? loaded,
    TResult Function(ReviewFailure failure)? fail,
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
    TResult Function(_ReviewsState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ReviewsState value)? $default, {
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

abstract class _Failure implements ReviewsState {
  const factory _Failure(ReviewFailure failure) = _$_Failure;

  ReviewFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
