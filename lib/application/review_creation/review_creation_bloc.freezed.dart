// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewCreationEventTearOff {
  const _$ReviewCreationEventTearOff();

  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

  _RatingChanged ratingChanged(int ratingInt) {
    return _RatingChanged(
      ratingInt,
    );
  }

  _LeaveReviewPressed leaveReviewPressed(Restaurant restaurant) {
    return _LeaveReviewPressed(
      restaurant,
    );
  }
}

/// @nodoc
const $ReviewCreationEvent = _$ReviewCreationEventTearOff();

/// @nodoc
mixin _$ReviewCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(Restaurant restaurant) leaveReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(Restaurant restaurant)? leaveReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_LeaveReviewPressed value) leaveReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_LeaveReviewPressed value)? leaveReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCreationEventCopyWith<$Res> {
  factory $ReviewCreationEventCopyWith(
          ReviewCreationEvent value, $Res Function(ReviewCreationEvent) then) =
      _$ReviewCreationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewCreationEventCopyWithImpl<$Res>
    implements $ReviewCreationEventCopyWith<$Res> {
  _$ReviewCreationEventCopyWithImpl(this._value, this._then);

  final ReviewCreationEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewCreationEvent) _then;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res>
    extends _$ReviewCreationEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'ReviewCreationEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(Restaurant restaurant) leaveReviewPressed,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(Restaurant restaurant)? leaveReviewPressed,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_LeaveReviewPressed value) leaveReviewPressed,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_LeaveReviewPressed value)? leaveReviewPressed,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements ReviewCreationEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RatingChangedCopyWith<$Res> {
  factory _$RatingChangedCopyWith(
          _RatingChanged value, $Res Function(_RatingChanged) then) =
      __$RatingChangedCopyWithImpl<$Res>;
  $Res call({int ratingInt});
}

/// @nodoc
class __$RatingChangedCopyWithImpl<$Res>
    extends _$ReviewCreationEventCopyWithImpl<$Res>
    implements _$RatingChangedCopyWith<$Res> {
  __$RatingChangedCopyWithImpl(
      _RatingChanged _value, $Res Function(_RatingChanged) _then)
      : super(_value, (v) => _then(v as _RatingChanged));

  @override
  _RatingChanged get _value => super._value as _RatingChanged;

  @override
  $Res call({
    Object? ratingInt = freezed,
  }) {
    return _then(_RatingChanged(
      ratingInt == freezed
          ? _value.ratingInt
          : ratingInt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_RatingChanged implements _RatingChanged {
  const _$_RatingChanged(this.ratingInt);

  @override
  final int ratingInt;

  @override
  String toString() {
    return 'ReviewCreationEvent.ratingChanged(ratingInt: $ratingInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RatingChanged &&
            (identical(other.ratingInt, ratingInt) ||
                const DeepCollectionEquality()
                    .equals(other.ratingInt, ratingInt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ratingInt);

  @JsonKey(ignore: true)
  @override
  _$RatingChangedCopyWith<_RatingChanged> get copyWith =>
      __$RatingChangedCopyWithImpl<_RatingChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(Restaurant restaurant) leaveReviewPressed,
  }) {
    return ratingChanged(ratingInt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(Restaurant restaurant)? leaveReviewPressed,
    required TResult orElse(),
  }) {
    if (ratingChanged != null) {
      return ratingChanged(ratingInt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_LeaveReviewPressed value) leaveReviewPressed,
  }) {
    return ratingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_LeaveReviewPressed value)? leaveReviewPressed,
    required TResult orElse(),
  }) {
    if (ratingChanged != null) {
      return ratingChanged(this);
    }
    return orElse();
  }
}

abstract class _RatingChanged implements ReviewCreationEvent {
  const factory _RatingChanged(int ratingInt) = _$_RatingChanged;

  int get ratingInt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RatingChangedCopyWith<_RatingChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeaveReviewPressedCopyWith<$Res> {
  factory _$LeaveReviewPressedCopyWith(
          _LeaveReviewPressed value, $Res Function(_LeaveReviewPressed) then) =
      __$LeaveReviewPressedCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$LeaveReviewPressedCopyWithImpl<$Res>
    extends _$ReviewCreationEventCopyWithImpl<$Res>
    implements _$LeaveReviewPressedCopyWith<$Res> {
  __$LeaveReviewPressedCopyWithImpl(
      _LeaveReviewPressed _value, $Res Function(_LeaveReviewPressed) _then)
      : super(_value, (v) => _then(v as _LeaveReviewPressed));

  @override
  _LeaveReviewPressed get _value => super._value as _LeaveReviewPressed;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_LeaveReviewPressed(
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
class _$_LeaveReviewPressed implements _LeaveReviewPressed {
  const _$_LeaveReviewPressed(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'ReviewCreationEvent.leaveReviewPressed(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeaveReviewPressed &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  _$LeaveReviewPressedCopyWith<_LeaveReviewPressed> get copyWith =>
      __$LeaveReviewPressedCopyWithImpl<_LeaveReviewPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(Restaurant restaurant) leaveReviewPressed,
  }) {
    return leaveReviewPressed(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(Restaurant restaurant)? leaveReviewPressed,
    required TResult orElse(),
  }) {
    if (leaveReviewPressed != null) {
      return leaveReviewPressed(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_LeaveReviewPressed value) leaveReviewPressed,
  }) {
    return leaveReviewPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_LeaveReviewPressed value)? leaveReviewPressed,
    required TResult orElse(),
  }) {
    if (leaveReviewPressed != null) {
      return leaveReviewPressed(this);
    }
    return orElse();
  }
}

abstract class _LeaveReviewPressed implements ReviewCreationEvent {
  const factory _LeaveReviewPressed(Restaurant restaurant) =
      _$_LeaveReviewPressed;

  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LeaveReviewPressedCopyWith<_LeaveReviewPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReviewCreationStateTearOff {
  const _$ReviewCreationStateTearOff();

  _ReviewCreationState call(
      {required UniqueId id,
      required ReviewBody body,
      required ReviewRating rating,
      required bool isSubmitting,
      required Option<Either<ReviewFailure, Unit>>
          reviewFailureOrSuccessOption}) {
    return _ReviewCreationState(
      id: id,
      body: body,
      rating: rating,
      isSubmitting: isSubmitting,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ReviewCreationState = _$ReviewCreationStateTearOff();

/// @nodoc
mixin _$ReviewCreationState {
  UniqueId get id => throw _privateConstructorUsedError;
  ReviewBody get body => throw _privateConstructorUsedError;
  ReviewRating get rating => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCreationStateCopyWith<ReviewCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCreationStateCopyWith<$Res> {
  factory $ReviewCreationStateCopyWith(
          ReviewCreationState value, $Res Function(ReviewCreationState) then) =
      _$ReviewCreationStateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      ReviewBody body,
      ReviewRating rating,
      bool isSubmitting,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});
}

/// @nodoc
class _$ReviewCreationStateCopyWithImpl<$Res>
    implements $ReviewCreationStateCopyWith<$Res> {
  _$ReviewCreationStateCopyWithImpl(this._value, this._then);

  final ReviewCreationState _value;
  // ignore: unused_field
  final $Res Function(ReviewCreationState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? rating = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as ReviewRating,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption == freezed
          ? _value.reviewFailureOrSuccessOption
          : reviewFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReviewFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ReviewCreationStateCopyWith<$Res>
    implements $ReviewCreationStateCopyWith<$Res> {
  factory _$ReviewCreationStateCopyWith(_ReviewCreationState value,
          $Res Function(_ReviewCreationState) then) =
      __$ReviewCreationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      ReviewBody body,
      ReviewRating rating,
      bool isSubmitting,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});
}

/// @nodoc
class __$ReviewCreationStateCopyWithImpl<$Res>
    extends _$ReviewCreationStateCopyWithImpl<$Res>
    implements _$ReviewCreationStateCopyWith<$Res> {
  __$ReviewCreationStateCopyWithImpl(
      _ReviewCreationState _value, $Res Function(_ReviewCreationState) _then)
      : super(_value, (v) => _then(v as _ReviewCreationState));

  @override
  _ReviewCreationState get _value => super._value as _ReviewCreationState;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? rating = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_ReviewCreationState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as ReviewRating,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption == freezed
          ? _value.reviewFailureOrSuccessOption
          : reviewFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReviewFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ReviewCreationState implements _ReviewCreationState {
  const _$_ReviewCreationState(
      {required this.id,
      required this.body,
      required this.rating,
      required this.isSubmitting,
      required this.reviewFailureOrSuccessOption});

  @override
  final UniqueId id;
  @override
  final ReviewBody body;
  @override
  final ReviewRating rating;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption;

  @override
  String toString() {
    return 'ReviewCreationState(id: $id, body: $body, rating: $rating, isSubmitting: $isSubmitting, reviewFailureOrSuccessOption: $reviewFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewCreationState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.reviewFailureOrSuccessOption,
                    reviewFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.reviewFailureOrSuccessOption,
                    reviewFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(reviewFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ReviewCreationStateCopyWith<_ReviewCreationState> get copyWith =>
      __$ReviewCreationStateCopyWithImpl<_ReviewCreationState>(
          this, _$identity);
}

abstract class _ReviewCreationState implements ReviewCreationState {
  const factory _ReviewCreationState(
      {required UniqueId id,
      required ReviewBody body,
      required ReviewRating rating,
      required bool isSubmitting,
      required Option<Either<ReviewFailure, Unit>>
          reviewFailureOrSuccessOption}) = _$_ReviewCreationState;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  ReviewBody get body => throw _privateConstructorUsedError;
  @override
  ReviewRating get rating => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewCreationStateCopyWith<_ReviewCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
