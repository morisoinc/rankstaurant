// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurant_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantFormEventTearOff {
  const _$RestaurantFormEventTearOff();

  _Initialized initialized(Option<Restaurant> initialRestaurantOption) {
    return _Initialized(
      initialRestaurantOption,
    );
  }

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _SaveRestaurantPressed saveRestaurantPressed() {
    return const _SaveRestaurantPressed();
  }

  _DeleteRestaurantPressed deleteRestaurantPressed() {
    return const _DeleteRestaurantPressed();
  }
}

/// @nodoc
const $RestaurantFormEvent = _$RestaurantFormEventTearOff();

/// @nodoc
mixin _$RestaurantFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saveRestaurantPressed,
    required TResult Function() deleteRestaurantPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> initialRestaurantOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saveRestaurantPressed,
    TResult Function()? deleteRestaurantPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_SaveRestaurantPressed value)
        saveRestaurantPressed,
    required TResult Function(_DeleteRestaurantPressed value)
        deleteRestaurantPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_SaveRestaurantPressed value)? saveRestaurantPressed,
    TResult Function(_DeleteRestaurantPressed value)? deleteRestaurantPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantFormEventCopyWith<$Res> {
  factory $RestaurantFormEventCopyWith(
          RestaurantFormEvent value, $Res Function(RestaurantFormEvent) then) =
      _$RestaurantFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantFormEventCopyWithImpl<$Res>
    implements $RestaurantFormEventCopyWith<$Res> {
  _$RestaurantFormEventCopyWithImpl(this._value, this._then);

  final RestaurantFormEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Restaurant> initialRestaurantOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$RestaurantFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialRestaurantOption = freezed,
  }) {
    return _then(_Initialized(
      initialRestaurantOption == freezed
          ? _value.initialRestaurantOption
          : initialRestaurantOption // ignore: cast_nullable_to_non_nullable
              as Option<Restaurant>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialRestaurantOption);

  @override
  final Option<Restaurant> initialRestaurantOption;

  @override
  String toString() {
    return 'RestaurantFormEvent.initialized(initialRestaurantOption: $initialRestaurantOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(
                    other.initialRestaurantOption, initialRestaurantOption) ||
                const DeepCollectionEquality().equals(
                    other.initialRestaurantOption, initialRestaurantOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialRestaurantOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saveRestaurantPressed,
    required TResult Function() deleteRestaurantPressed,
  }) {
    return initialized(initialRestaurantOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> initialRestaurantOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saveRestaurantPressed,
    TResult Function()? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialRestaurantOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_SaveRestaurantPressed value)
        saveRestaurantPressed,
    required TResult Function(_DeleteRestaurantPressed value)
        deleteRestaurantPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_SaveRestaurantPressed value)? saveRestaurantPressed,
    TResult Function(_DeleteRestaurantPressed value)? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements RestaurantFormEvent {
  const factory _Initialized(Option<Restaurant> initialRestaurantOption) =
      _$_Initialized;

  Option<Restaurant> get initialRestaurantOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$RestaurantFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'RestaurantFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saveRestaurantPressed,
    required TResult Function() deleteRestaurantPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> initialRestaurantOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saveRestaurantPressed,
    TResult Function()? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_SaveRestaurantPressed value)
        saveRestaurantPressed,
    required TResult Function(_DeleteRestaurantPressed value)
        deleteRestaurantPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_SaveRestaurantPressed value)? saveRestaurantPressed,
    TResult Function(_DeleteRestaurantPressed value)? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RestaurantFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveRestaurantPressedCopyWith<$Res> {
  factory _$SaveRestaurantPressedCopyWith(_SaveRestaurantPressed value,
          $Res Function(_SaveRestaurantPressed) then) =
      __$SaveRestaurantPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveRestaurantPressedCopyWithImpl<$Res>
    extends _$RestaurantFormEventCopyWithImpl<$Res>
    implements _$SaveRestaurantPressedCopyWith<$Res> {
  __$SaveRestaurantPressedCopyWithImpl(_SaveRestaurantPressed _value,
      $Res Function(_SaveRestaurantPressed) _then)
      : super(_value, (v) => _then(v as _SaveRestaurantPressed));

  @override
  _SaveRestaurantPressed get _value => super._value as _SaveRestaurantPressed;
}

/// @nodoc
class _$_SaveRestaurantPressed implements _SaveRestaurantPressed {
  const _$_SaveRestaurantPressed();

  @override
  String toString() {
    return 'RestaurantFormEvent.saveRestaurantPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveRestaurantPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saveRestaurantPressed,
    required TResult Function() deleteRestaurantPressed,
  }) {
    return saveRestaurantPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> initialRestaurantOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saveRestaurantPressed,
    TResult Function()? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (saveRestaurantPressed != null) {
      return saveRestaurantPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_SaveRestaurantPressed value)
        saveRestaurantPressed,
    required TResult Function(_DeleteRestaurantPressed value)
        deleteRestaurantPressed,
  }) {
    return saveRestaurantPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_SaveRestaurantPressed value)? saveRestaurantPressed,
    TResult Function(_DeleteRestaurantPressed value)? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (saveRestaurantPressed != null) {
      return saveRestaurantPressed(this);
    }
    return orElse();
  }
}

abstract class _SaveRestaurantPressed implements RestaurantFormEvent {
  const factory _SaveRestaurantPressed() = _$_SaveRestaurantPressed;
}

/// @nodoc
abstract class _$DeleteRestaurantPressedCopyWith<$Res> {
  factory _$DeleteRestaurantPressedCopyWith(_DeleteRestaurantPressed value,
          $Res Function(_DeleteRestaurantPressed) then) =
      __$DeleteRestaurantPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteRestaurantPressedCopyWithImpl<$Res>
    extends _$RestaurantFormEventCopyWithImpl<$Res>
    implements _$DeleteRestaurantPressedCopyWith<$Res> {
  __$DeleteRestaurantPressedCopyWithImpl(_DeleteRestaurantPressed _value,
      $Res Function(_DeleteRestaurantPressed) _then)
      : super(_value, (v) => _then(v as _DeleteRestaurantPressed));

  @override
  _DeleteRestaurantPressed get _value =>
      super._value as _DeleteRestaurantPressed;
}

/// @nodoc
class _$_DeleteRestaurantPressed implements _DeleteRestaurantPressed {
  const _$_DeleteRestaurantPressed();

  @override
  String toString() {
    return 'RestaurantFormEvent.deleteRestaurantPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteRestaurantPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Restaurant> initialRestaurantOption)
        initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() saveRestaurantPressed,
    required TResult Function() deleteRestaurantPressed,
  }) {
    return deleteRestaurantPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Restaurant> initialRestaurantOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? saveRestaurantPressed,
    TResult Function()? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (deleteRestaurantPressed != null) {
      return deleteRestaurantPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_SaveRestaurantPressed value)
        saveRestaurantPressed,
    required TResult Function(_DeleteRestaurantPressed value)
        deleteRestaurantPressed,
  }) {
    return deleteRestaurantPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_SaveRestaurantPressed value)? saveRestaurantPressed,
    TResult Function(_DeleteRestaurantPressed value)? deleteRestaurantPressed,
    required TResult orElse(),
  }) {
    if (deleteRestaurantPressed != null) {
      return deleteRestaurantPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteRestaurantPressed implements RestaurantFormEvent {
  const factory _DeleteRestaurantPressed() = _$_DeleteRestaurantPressed;
}

/// @nodoc
class _$RestaurantFormStateTearOff {
  const _$RestaurantFormStateTearOff();

  _RestaurantCreationState call(
      {required Restaurant restaurant,
      required bool isEditing,
      required bool isSubmitting,
      required Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption}) {
    return _RestaurantCreationState(
      restaurant: restaurant,
      isEditing: isEditing,
      isSubmitting: isSubmitting,
      restaurantFailureOrSuccessOption: restaurantFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RestaurantFormState = _$RestaurantFormStateTearOff();

/// @nodoc
mixin _$RestaurantFormState {
  Restaurant get restaurant => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<RestaurantFailure, Unit>>
      get restaurantFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantFormStateCopyWith<RestaurantFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantFormStateCopyWith<$Res> {
  factory $RestaurantFormStateCopyWith(
          RestaurantFormState value, $Res Function(RestaurantFormState) then) =
      _$RestaurantFormStateCopyWithImpl<$Res>;
  $Res call(
      {Restaurant restaurant,
      bool isEditing,
      bool isSubmitting,
      Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$RestaurantFormStateCopyWithImpl<$Res>
    implements $RestaurantFormStateCopyWith<$Res> {
  _$RestaurantFormStateCopyWithImpl(this._value, this._then);

  final RestaurantFormState _value;
  // ignore: unused_field
  final $Res Function(RestaurantFormState) _then;

  @override
  $Res call({
    Object? restaurant = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? restaurantFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurantFailureOrSuccessOption: restaurantFailureOrSuccessOption ==
              freezed
          ? _value.restaurantFailureOrSuccessOption
          : restaurantFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RestaurantFailure, Unit>>,
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
abstract class _$RestaurantCreationStateCopyWith<$Res>
    implements $RestaurantFormStateCopyWith<$Res> {
  factory _$RestaurantCreationStateCopyWith(_RestaurantCreationState value,
          $Res Function(_RestaurantCreationState) then) =
      __$RestaurantCreationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Restaurant restaurant,
      bool isEditing,
      bool isSubmitting,
      Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption});

  @override
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$RestaurantCreationStateCopyWithImpl<$Res>
    extends _$RestaurantFormStateCopyWithImpl<$Res>
    implements _$RestaurantCreationStateCopyWith<$Res> {
  __$RestaurantCreationStateCopyWithImpl(_RestaurantCreationState _value,
      $Res Function(_RestaurantCreationState) _then)
      : super(_value, (v) => _then(v as _RestaurantCreationState));

  @override
  _RestaurantCreationState get _value =>
      super._value as _RestaurantCreationState;

  @override
  $Res call({
    Object? restaurant = freezed,
    Object? isEditing = freezed,
    Object? isSubmitting = freezed,
    Object? restaurantFailureOrSuccessOption = freezed,
  }) {
    return _then(_RestaurantCreationState(
      restaurant: restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      restaurantFailureOrSuccessOption: restaurantFailureOrSuccessOption ==
              freezed
          ? _value.restaurantFailureOrSuccessOption
          : restaurantFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RestaurantFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_RestaurantCreationState implements _RestaurantCreationState {
  const _$_RestaurantCreationState(
      {required this.restaurant,
      required this.isEditing,
      required this.isSubmitting,
      required this.restaurantFailureOrSuccessOption});

  @override
  final Restaurant restaurant;
  @override
  final bool isEditing;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<RestaurantFailure, Unit>>
      restaurantFailureOrSuccessOption;

  @override
  String toString() {
    return 'RestaurantFormState(restaurant: $restaurant, isEditing: $isEditing, isSubmitting: $isSubmitting, restaurantFailureOrSuccessOption: $restaurantFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantCreationState &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.restaurantFailureOrSuccessOption,
                    restaurantFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.restaurantFailureOrSuccessOption,
                    restaurantFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(restaurant) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(restaurantFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RestaurantCreationStateCopyWith<_RestaurantCreationState> get copyWith =>
      __$RestaurantCreationStateCopyWithImpl<_RestaurantCreationState>(
          this, _$identity);
}

abstract class _RestaurantCreationState implements RestaurantFormState {
  const factory _RestaurantCreationState(
      {required Restaurant restaurant,
      required bool isEditing,
      required bool isSubmitting,
      required Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption}) = _$_RestaurantCreationState;

  @override
  Restaurant get restaurant => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<RestaurantFailure, Unit>>
      get restaurantFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RestaurantCreationStateCopyWith<_RestaurantCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
