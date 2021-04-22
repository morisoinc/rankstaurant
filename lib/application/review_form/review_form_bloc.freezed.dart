// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewFormEventTearOff {
  const _$ReviewFormEventTearOff();

  _Initialized initialized(Option<Review> initialReviewOption,
      Option<Restaurant> initialRestaurantOption) {
    return _Initialized(
      initialReviewOption,
      initialRestaurantOption,
    );
  }

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

  _ResponseChanged responseChanged(String responseStr) {
    return _ResponseChanged(
      responseStr,
    );
  }

  _SaveReviewPressed saveReviewPressed() {
    return const _SaveReviewPressed();
  }

  _DeleteReviewPressed deleteReviewPressed() {
    return const _DeleteReviewPressed();
  }
}

/// @nodoc
const $ReviewFormEvent = _$ReviewFormEventTearOff();

/// @nodoc
mixin _$ReviewFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(String responseStr) responseChanged,
    required TResult Function() saveReviewPressed,
    required TResult Function() deleteReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)?
        initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(String responseStr)? responseChanged,
    TResult Function()? saveReviewPressed,
    TResult Function()? deleteReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_SaveReviewPressed value) saveReviewPressed,
    required TResult Function(_DeleteReviewPressed value) deleteReviewPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_SaveReviewPressed value)? saveReviewPressed,
    TResult Function(_DeleteReviewPressed value)? deleteReviewPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewFormEventCopyWith<$Res> {
  factory $ReviewFormEventCopyWith(
          ReviewFormEvent value, $Res Function(ReviewFormEvent) then) =
      _$ReviewFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReviewFormEventCopyWithImpl<$Res>
    implements $ReviewFormEventCopyWith<$Res> {
  _$ReviewFormEventCopyWithImpl(this._value, this._then);

  final ReviewFormEvent _value;
  // ignore: unused_field
  final $Res Function(ReviewFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call(
      {Option<Review> initialReviewOption,
      Option<Restaurant> initialRestaurantOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ReviewFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialReviewOption = freezed,
    Object? initialRestaurantOption = freezed,
  }) {
    return _then(_Initialized(
      initialReviewOption == freezed
          ? _value.initialReviewOption
          : initialReviewOption // ignore: cast_nullable_to_non_nullable
              as Option<Review>,
      initialRestaurantOption == freezed
          ? _value.initialRestaurantOption
          : initialRestaurantOption // ignore: cast_nullable_to_non_nullable
              as Option<Restaurant>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialReviewOption, this.initialRestaurantOption);

  @override
  final Option<Review> initialReviewOption;
  @override
  final Option<Restaurant> initialRestaurantOption;

  @override
  String toString() {
    return 'ReviewFormEvent.initialized(initialReviewOption: $initialReviewOption, initialRestaurantOption: $initialRestaurantOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialReviewOption, initialReviewOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialReviewOption, initialReviewOption)) &&
            (identical(
                    other.initialRestaurantOption, initialRestaurantOption) ||
                const DeepCollectionEquality().equals(
                    other.initialRestaurantOption, initialRestaurantOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialReviewOption) ^
      const DeepCollectionEquality().hash(initialRestaurantOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(String responseStr) responseChanged,
    required TResult Function() saveReviewPressed,
    required TResult Function() deleteReviewPressed,
  }) {
    return initialized(initialReviewOption, initialRestaurantOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)?
        initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(String responseStr)? responseChanged,
    TResult Function()? saveReviewPressed,
    TResult Function()? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialReviewOption, initialRestaurantOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_SaveReviewPressed value) saveReviewPressed,
    required TResult Function(_DeleteReviewPressed value) deleteReviewPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_SaveReviewPressed value)? saveReviewPressed,
    TResult Function(_DeleteReviewPressed value)? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ReviewFormEvent {
  const factory _Initialized(Option<Review> initialReviewOption,
      Option<Restaurant> initialRestaurantOption) = _$_Initialized;

  Option<Review> get initialReviewOption => throw _privateConstructorUsedError;
  Option<Restaurant> get initialRestaurantOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ReviewFormEventCopyWithImpl<$Res>
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
    return 'ReviewFormEvent.bodyChanged(bodyStr: $bodyStr)';
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
    required TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(String responseStr) responseChanged,
    required TResult Function() saveReviewPressed,
    required TResult Function() deleteReviewPressed,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)?
        initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(String responseStr)? responseChanged,
    TResult Function()? saveReviewPressed,
    TResult Function()? deleteReviewPressed,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_SaveReviewPressed value) saveReviewPressed,
    required TResult Function(_DeleteReviewPressed value) deleteReviewPressed,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_SaveReviewPressed value)? saveReviewPressed,
    TResult Function(_DeleteReviewPressed value)? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements ReviewFormEvent {
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
    extends _$ReviewFormEventCopyWithImpl<$Res>
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
    return 'ReviewFormEvent.ratingChanged(ratingInt: $ratingInt)';
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
    required TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(String responseStr) responseChanged,
    required TResult Function() saveReviewPressed,
    required TResult Function() deleteReviewPressed,
  }) {
    return ratingChanged(ratingInt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)?
        initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(String responseStr)? responseChanged,
    TResult Function()? saveReviewPressed,
    TResult Function()? deleteReviewPressed,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_SaveReviewPressed value) saveReviewPressed,
    required TResult Function(_DeleteReviewPressed value) deleteReviewPressed,
  }) {
    return ratingChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_SaveReviewPressed value)? saveReviewPressed,
    TResult Function(_DeleteReviewPressed value)? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (ratingChanged != null) {
      return ratingChanged(this);
    }
    return orElse();
  }
}

abstract class _RatingChanged implements ReviewFormEvent {
  const factory _RatingChanged(int ratingInt) = _$_RatingChanged;

  int get ratingInt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RatingChangedCopyWith<_RatingChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ReviewFormEventCopyWithImpl<$Res>
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
    return 'ReviewFormEvent.responseChanged(responseStr: $responseStr)';
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
    required TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(String responseStr) responseChanged,
    required TResult Function() saveReviewPressed,
    required TResult Function() deleteReviewPressed,
  }) {
    return responseChanged(responseStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)?
        initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(String responseStr)? responseChanged,
    TResult Function()? saveReviewPressed,
    TResult Function()? deleteReviewPressed,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_SaveReviewPressed value) saveReviewPressed,
    required TResult Function(_DeleteReviewPressed value) deleteReviewPressed,
  }) {
    return responseChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_SaveReviewPressed value)? saveReviewPressed,
    TResult Function(_DeleteReviewPressed value)? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (responseChanged != null) {
      return responseChanged(this);
    }
    return orElse();
  }
}

abstract class _ResponseChanged implements ReviewFormEvent {
  const factory _ResponseChanged(String responseStr) = _$_ResponseChanged;

  String get responseStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResponseChangedCopyWith<_ResponseChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveReviewPressedCopyWith<$Res> {
  factory _$SaveReviewPressedCopyWith(
          _SaveReviewPressed value, $Res Function(_SaveReviewPressed) then) =
      __$SaveReviewPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveReviewPressedCopyWithImpl<$Res>
    extends _$ReviewFormEventCopyWithImpl<$Res>
    implements _$SaveReviewPressedCopyWith<$Res> {
  __$SaveReviewPressedCopyWithImpl(
      _SaveReviewPressed _value, $Res Function(_SaveReviewPressed) _then)
      : super(_value, (v) => _then(v as _SaveReviewPressed));

  @override
  _SaveReviewPressed get _value => super._value as _SaveReviewPressed;
}

/// @nodoc
class _$_SaveReviewPressed implements _SaveReviewPressed {
  const _$_SaveReviewPressed();

  @override
  String toString() {
    return 'ReviewFormEvent.saveReviewPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveReviewPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(String responseStr) responseChanged,
    required TResult Function() saveReviewPressed,
    required TResult Function() deleteReviewPressed,
  }) {
    return saveReviewPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)?
        initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(String responseStr)? responseChanged,
    TResult Function()? saveReviewPressed,
    TResult Function()? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (saveReviewPressed != null) {
      return saveReviewPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_SaveReviewPressed value) saveReviewPressed,
    required TResult Function(_DeleteReviewPressed value) deleteReviewPressed,
  }) {
    return saveReviewPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_SaveReviewPressed value)? saveReviewPressed,
    TResult Function(_DeleteReviewPressed value)? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (saveReviewPressed != null) {
      return saveReviewPressed(this);
    }
    return orElse();
  }
}

abstract class _SaveReviewPressed implements ReviewFormEvent {
  const factory _SaveReviewPressed() = _$_SaveReviewPressed;
}

/// @nodoc
abstract class _$DeleteReviewPressedCopyWith<$Res> {
  factory _$DeleteReviewPressedCopyWith(_DeleteReviewPressed value,
          $Res Function(_DeleteReviewPressed) then) =
      __$DeleteReviewPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteReviewPressedCopyWithImpl<$Res>
    extends _$ReviewFormEventCopyWithImpl<$Res>
    implements _$DeleteReviewPressedCopyWith<$Res> {
  __$DeleteReviewPressedCopyWithImpl(
      _DeleteReviewPressed _value, $Res Function(_DeleteReviewPressed) _then)
      : super(_value, (v) => _then(v as _DeleteReviewPressed));

  @override
  _DeleteReviewPressed get _value => super._value as _DeleteReviewPressed;
}

/// @nodoc
class _$_DeleteReviewPressed implements _DeleteReviewPressed {
  const _$_DeleteReviewPressed();

  @override
  String toString() {
    return 'ReviewFormEvent.deleteReviewPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteReviewPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(int ratingInt) ratingChanged,
    required TResult Function(String responseStr) responseChanged,
    required TResult Function() saveReviewPressed,
    required TResult Function() deleteReviewPressed,
  }) {
    return deleteReviewPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Review> initialReviewOption,
            Option<Restaurant> initialRestaurantOption)?
        initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(int ratingInt)? ratingChanged,
    TResult Function(String responseStr)? responseChanged,
    TResult Function()? saveReviewPressed,
    TResult Function()? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (deleteReviewPressed != null) {
      return deleteReviewPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_RatingChanged value) ratingChanged,
    required TResult Function(_ResponseChanged value) responseChanged,
    required TResult Function(_SaveReviewPressed value) saveReviewPressed,
    required TResult Function(_DeleteReviewPressed value) deleteReviewPressed,
  }) {
    return deleteReviewPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_RatingChanged value)? ratingChanged,
    TResult Function(_ResponseChanged value)? responseChanged,
    TResult Function(_SaveReviewPressed value)? saveReviewPressed,
    TResult Function(_DeleteReviewPressed value)? deleteReviewPressed,
    required TResult orElse(),
  }) {
    if (deleteReviewPressed != null) {
      return deleteReviewPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteReviewPressed implements ReviewFormEvent {
  const factory _DeleteReviewPressed() = _$_DeleteReviewPressed;
}

/// @nodoc
class _$ReviewFormStateTearOff {
  const _$ReviewFormStateTearOff();

  _ReviewFormState call(
      {required Review review,
      required Restaurant restaurant,
      required int originalResponseLength,
      required int originalRating,
      required bool isEditing,
      required bool isSubmitting,
      required Option<Either<ReviewFailure, Unit>>
          reviewFailureOrSuccessOption}) {
    return _ReviewFormState(
      review: review,
      restaurant: restaurant,
      originalResponseLength: originalResponseLength,
      originalRating: originalRating,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      reviewFailureOrSuccessOption: reviewFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ReviewFormState = _$ReviewFormStateTearOff();

/// @nodoc
mixin _$ReviewFormState {
  Review get review => throw _privateConstructorUsedError;
  Restaurant get restaurant => throw _privateConstructorUsedError;
  int get originalResponseLength => throw _privateConstructorUsedError;
  int get originalRating => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewFormStateCopyWith<ReviewFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewFormStateCopyWith<$Res> {
  factory $ReviewFormStateCopyWith(
          ReviewFormState value, $Res Function(ReviewFormState) then) =
      _$ReviewFormStateCopyWithImpl<$Res>;
  $Res call(
      {Review review,
      Restaurant restaurant,
      int originalResponseLength,
      int originalRating,
      bool isEditing,
      bool isSubmitting,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});

  $ReviewCopyWith<$Res> get review;
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$ReviewFormStateCopyWithImpl<$Res>
    implements $ReviewFormStateCopyWith<$Res> {
  _$ReviewFormStateCopyWithImpl(this._value, this._then);

  final ReviewFormState _value;
  // ignore: unused_field
  final $Res Function(ReviewFormState) _then;

  @override
  $Res call({
    Object? review = freezed,
    Object? restaurant = freezed,
    Object? originalResponseLength = freezed,
    Object? originalRating = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      originalResponseLength: originalResponseLength == freezed
          ? _value.originalResponseLength
          : originalResponseLength // ignore: cast_nullable_to_non_nullable
              as int,
      originalRating: originalRating == freezed
          ? _value.originalRating
          : originalRating // ignore: cast_nullable_to_non_nullable
              as int,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$ReviewFormStateCopyWith<$Res>
    implements $ReviewFormStateCopyWith<$Res> {
  factory _$ReviewFormStateCopyWith(
          _ReviewFormState value, $Res Function(_ReviewFormState) then) =
      __$ReviewFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Review review,
      Restaurant restaurant,
      int originalResponseLength,
      int originalRating,
      bool isEditing,
      bool isSubmitting,
      Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption});

  @override
  $ReviewCopyWith<$Res> get review;
  @override
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$ReviewFormStateCopyWithImpl<$Res>
    extends _$ReviewFormStateCopyWithImpl<$Res>
    implements _$ReviewFormStateCopyWith<$Res> {
  __$ReviewFormStateCopyWithImpl(
      _ReviewFormState _value, $Res Function(_ReviewFormState) _then)
      : super(_value, (v) => _then(v as _ReviewFormState));

  @override
  _ReviewFormState get _value => super._value as _ReviewFormState;

  @override
  $Res call({
    Object? review = freezed,
    Object? restaurant = freezed,
    Object? originalResponseLength = freezed,
    Object? originalRating = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? reviewFailureOrSuccessOption = freezed,
  }) {
    return _then(_ReviewFormState(
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      originalResponseLength: originalResponseLength == freezed
          ? _value.originalResponseLength
          : originalResponseLength // ignore: cast_nullable_to_non_nullable
              as int,
      originalRating: originalRating == freezed
          ? _value.originalRating
          : originalRating // ignore: cast_nullable_to_non_nullable
              as int,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_ReviewFormState implements _ReviewFormState {
  const _$_ReviewFormState(
      {required this.review,
      required this.restaurant,
      required this.originalResponseLength,
      required this.originalRating,
      required this.isEditing,
      required this.isSubmitting,
      required this.reviewFailureOrSuccessOption});

  @override
  final Review review;
  @override
  final Restaurant restaurant;
  @override
  final int originalResponseLength;
  @override
  final int originalRating;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ReviewFailure, Unit>> reviewFailureOrSuccessOption;

  @override
  String toString() {
    return 'ReviewFormState(review: $review, restaurant: $restaurant, originalResponseLength: $originalResponseLength, originalRating: $originalRating, isEditing: $isEditing, isSubmitting: $isSubmitting, reviewFailureOrSuccessOption: $reviewFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReviewFormState &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)) &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.originalResponseLength, originalResponseLength) ||
                const DeepCollectionEquality().equals(
                    other.originalResponseLength, originalResponseLength)) &&
            (identical(other.originalRating, originalRating) ||
                const DeepCollectionEquality()
                    .equals(other.originalRating, originalRating)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
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
      const DeepCollectionEquality().hash(review) ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(originalResponseLength) ^
      const DeepCollectionEquality().hash(originalRating) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(reviewFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ReviewFormStateCopyWith<_ReviewFormState> get copyWith =>
      __$ReviewFormStateCopyWithImpl<_ReviewFormState>(this, _$identity);
}

abstract class _ReviewFormState implements ReviewFormState {
  const factory _ReviewFormState(
      {required Review review,
      required Restaurant restaurant,
      required int originalResponseLength,
      required int originalRating,
      required bool isEditing,
      required bool isSubmitting,
      required Option<Either<ReviewFailure, Unit>>
          reviewFailureOrSuccessOption}) = _$_ReviewFormState;

  @override
  Review get review => throw _privateConstructorUsedError;
  @override
  Restaurant get restaurant => throw _privateConstructorUsedError;
  @override
  int get originalResponseLength => throw _privateConstructorUsedError;
  @override
  int get originalRating => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ReviewFailure, Unit>> get reviewFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewFormStateCopyWith<_ReviewFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
