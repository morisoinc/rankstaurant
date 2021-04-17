// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_response_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewResponseEventTearOff {
  const _$ReviewResponseEventTearOff();

  _ResponseChanged responseChanged(String responseStr) {
    return _ResponseChanged(
      responseStr,
    );
  }

  _LeaveResponsePressed leaveResponsePressed(
      Review review, Restaurant restaurant) {
    return _LeaveResponsePressed(
      review,
      restaurant,
    );
  }
}

/// @nodoc
const $ReviewResponseEvent = _$ReviewResponseEventTearOff();

/// @nodoc
mixin _$ReviewResponseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String responseStr) responseChanged,
    required TResult Function(Review review, Restaurant restaurant)
        leaveResponsePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String responseStr)? responseChanged,
    TResult Function(Review review, Restaurant restaurant)?
        leaveResponsePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_LeaveResponsePressed value) leaveResponsePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_LeaveResponsePressed value)? leaveResponsePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseEventCopyWith<$Res> {
  factory $ReviewResponseEventCopyWith(
          ReviewResponseEvent value, $Res Function(ReviewResponseEvent) then) =
      _$ReviewResponseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewResponseEventCopyWithImpl<$Res>
    implements $ReviewResponseEventCopyWith<$Res> {
  _$ReviewResponseEventCopyWithImpl(this._value, this._then);

  final ReviewResponseEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewResponseEvent) _then;
}

/// @nodoc
abstract class _$ResponseChangedCopyWith<$Res> {
  factory _$ResponseChangedCopyWith(
          _ResponseChanged value, $Res Function(_ResponseChanged) then) =
      __$ResponseChangedCopyWithImpl<$Res>;
  $Res call({String responseStr});
}

/// @nodoc
class __$ResponseChangedCopyWithImpl<$Res>
    extends _$ReviewResponseEventCopyWithImpl<$Res>
    implements _$ResponseChangedCopyWith<$Res> {
  __$ResponseChangedCopyWithImpl(
      _ResponseChanged _value, $Res Function(_ResponseChanged) _then)
      : super(_value, (v) => _then(v as _ResponseChanged));

  @override
  _ResponseChanged get _value => super._value as _ResponseChanged;

  @override
  $Res call({
    Object? responseStr = freezed,
  }) {
    return _then(_ResponseChanged(
      responseStr == freezed
          ? _value.responseStr
          : responseStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_ResponseChanged implements _ResponseChanged {
  const _$_ResponseChanged(this.responseStr);

  @override
  final String responseStr;

  @override
  String toString() {
    return 'ReviewResponseEvent.responseChanged(responseStr: $responseStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseChanged &&
            (identical(other.responseStr, responseStr) ||
                const DeepCollectionEquality()
                    .equals(other.responseStr, responseStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(responseStr);

  @JsonKey(ignore: true)
  @override
  _$ResponseChangedCopyWith<_ResponseChanged> get copyWith =>
      __$ResponseChangedCopyWithImpl<_ResponseChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String responseStr) responseChanged,
    required TResult Function(Review review, Restaurant restaurant)
        leaveResponsePressed,
  }) {
    return responseChanged(responseStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String responseStr)? responseChanged,
    TResult Function(Review review, Restaurant restaurant)?
        leaveResponsePressed,
    required TResult orElse(),
  }) {
    if (responseChanged != null) {
      return responseChanged(responseStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_LeaveResponsePressed value) leaveResponsePressed,
  }) {
    return responseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_LeaveResponsePressed value)? leaveResponsePressed,
    required TResult orElse(),
  }) {
    if (responseChanged != null) {
      return responseChanged(this);
    }
    return orElse();
  }
}

abstract class _ResponseChanged implements ReviewResponseEvent {
  const factory _ResponseChanged(String responseStr) = _$_ResponseChanged;

  String get responseStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResponseChangedCopyWith<_ResponseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeaveResponsePressedCopyWith<$Res> {
  factory _$LeaveResponsePressedCopyWith(_LeaveResponsePressed value,
          $Res Function(_LeaveResponsePressed) then) =
      __$LeaveResponsePressedCopyWithImpl<$Res>;
  $Res call({Review review, Restaurant restaurant});

  $ReviewCopyWith<$Res> get review;
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$LeaveResponsePressedCopyWithImpl<$Res>
    extends _$ReviewResponseEventCopyWithImpl<$Res>
    implements _$LeaveResponsePressedCopyWith<$Res> {
  __$LeaveResponsePressedCopyWithImpl(
      _LeaveResponsePressed _value, $Res Function(_LeaveResponsePressed) _then)
      : super(_value, (v) => _then(v as _LeaveResponsePressed));

  @override
  _LeaveResponsePressed get _value => super._value as _LeaveResponsePressed;

  @override
  $Res call({
    Object? review = freezed,
    Object? restaurant = freezed,
  }) {
    return _then(_LeaveResponsePressed(
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }

  @override
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc
class _$_LeaveResponsePressed implements _LeaveResponsePressed {
  const _$_LeaveResponsePressed(this.review, this.restaurant);

  @override
  final Review review;
  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'ReviewResponseEvent.leaveResponsePressed(review: $review, restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeaveResponsePressed &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  _$LeaveResponsePressedCopyWith<_LeaveResponsePressed> get copyWith =>
      __$LeaveResponsePressedCopyWithImpl<_LeaveResponsePressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String responseStr) responseChanged,
    required TResult Function(Review review, Restaurant restaurant)
        leaveResponsePressed,
  }) {
    return leaveResponsePressed(review, restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String responseStr)? responseChanged,
    TResult Function(Review review, Restaurant restaurant)?
        leaveResponsePressed,
    required TResult orElse(),
  }) {
    if (leaveResponsePressed != null) {
      return leaveResponsePressed(review, restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_LeaveResponsePressed value) leaveResponsePressed,
  }) {
    return leaveResponsePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_LeaveResponsePressed value)? leaveResponsePressed,
    required TResult orElse(),
  }) {
    if (leaveResponsePressed != null) {
      return leaveResponsePressed(this);
    }
    return orElse();
  }
}

abstract class _LeaveResponsePressed implements ReviewResponseEvent {
  const factory _LeaveResponsePressed(Review review, Restaurant restaurant) =
      _$_LeaveResponsePressed;

  Review get review => throw _privateConstructorUsedError;
  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LeaveResponsePressedCopyWith<_LeaveResponsePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReviewResponseStateTearOff {
  const _$ReviewResponseStateTearOff();

  _ReviewResponseState call(
      {required ReviewResponse response,
      required bool isSubmitting,
      required Option<Either<ReviewFailure, Unit>>
          reviewFailureOrSuccessOption}) {
    return _ReviewResponseState(
      response: response,
      isSubmitting: isSubmitting,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ReviewResponseState = _$ReviewResponseStateTearOff();

/// @nodoc
mixin _$ReviewResponseState {
  ReviewResponse get response => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewResponseStateCopyWith<ReviewResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseStateCopyWith<$Res> {
  factory $ReviewResponseStateCopyWith(
          ReviewResponseState value, $Res Function(ReviewResponseState) then) =
      _$ReviewResponseStateCopyWithImpl<$Res>;
  $Res call(
      {ReviewResponse response,
      bool isSubmitting,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});
}

/// @nodoc
class _$ReviewResponseStateCopyWithImpl<$Res>
    implements $ReviewResponseStateCopyWith<$Res> {
  _$ReviewResponseStateCopyWithImpl(this._value, this._then);

  final ReviewResponseState _value;
  // ignore: unused_field
  final $Res Function(ReviewResponseState) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ReviewResponse,
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
abstract class _$ReviewResponseStateCopyWith<$Res>
    implements $ReviewResponseStateCopyWith<$Res> {
  factory _$ReviewResponseStateCopyWith(_ReviewResponseState value,
          $Res Function(_ReviewResponseState) then) =
      __$ReviewResponseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ReviewResponse response,
      bool isSubmitting,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});
}

/// @nodoc
class __$ReviewResponseStateCopyWithImpl<$Res>
    extends _$ReviewResponseStateCopyWithImpl<$Res>
    implements _$ReviewResponseStateCopyWith<$Res> {
  __$ReviewResponseStateCopyWithImpl(
      _ReviewResponseState _value, $Res Function(_ReviewResponseState) _then)
      : super(_value, (v) => _then(v as _ReviewResponseState));

  @override
  _ReviewResponseState get _value => super._value as _ReviewResponseState;

  @override
  $Res call({
    Object? response = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_ReviewResponseState(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ReviewResponse,
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
class _$_ReviewResponseState implements _ReviewResponseState {
  const _$_ReviewResponseState(
      {required this.response,
      required this.isSubmitting,
      required this.reviewFailureOrSuccessOption});

  @override
  final ReviewResponse response;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption;

  @override
  String toString() {
    return 'ReviewResponseState(response: $response, isSubmitting: $isSubmitting, reviewFailureOrSuccessOption: $reviewFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewResponseState &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
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
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(reviewFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ReviewResponseStateCopyWith<_ReviewResponseState> get copyWith =>
      __$ReviewResponseStateCopyWithImpl<_ReviewResponseState>(
          this, _$identity);
}

abstract class _ReviewResponseState implements ReviewResponseState {
  const factory _ReviewResponseState(
      {required ReviewResponse response,
      required bool isSubmitting,
      required Option<Either<ReviewFailure, Unit>>
          reviewFailureOrSuccessOption}) = _$_ReviewResponseState;

  @override
  ReviewResponse get response => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewResponseStateCopyWith<_ReviewResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}
