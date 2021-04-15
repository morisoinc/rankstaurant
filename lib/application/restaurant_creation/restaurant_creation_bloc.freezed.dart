// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurant_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantCreationEventTearOff {
  const _$RestaurantCreationEventTearOff();

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _CreateRestaurantPressed createRestaurantPressed() {
    return const _CreateRestaurantPressed();
  }
}

/// @nodoc
const $RestaurantCreationEvent = _$RestaurantCreationEventTearOff();

/// @nodoc
mixin _$RestaurantCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() createRestaurantPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? createRestaurantPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_CreateRestaurantPressed value)
        createRestaurantPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_CreateRestaurantPressed value)? createRestaurantPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCreationEventCopyWith<$Res> {
  factory $RestaurantCreationEventCopyWith(RestaurantCreationEvent value,
          $Res Function(RestaurantCreationEvent) then) =
      _$RestaurantCreationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantCreationEventCopyWithImpl<$Res>
    implements $RestaurantCreationEventCopyWith<$Res> {
  _$RestaurantCreationEventCopyWithImpl(this._value, this._then);

  final RestaurantCreationEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantCreationEvent) _then;
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
    extends _$RestaurantCreationEventCopyWithImpl<$Res>
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
    return 'RestaurantCreationEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() createRestaurantPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? createRestaurantPressed,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_CreateRestaurantPressed value)
        createRestaurantPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_CreateRestaurantPressed value)? createRestaurantPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements RestaurantCreationEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateRestaurantPressedCopyWith<$Res> {
  factory _$CreateRestaurantPressedCopyWith(_CreateRestaurantPressed value,
          $Res Function(_CreateRestaurantPressed) then) =
      __$CreateRestaurantPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateRestaurantPressedCopyWithImpl<$Res>
    extends _$RestaurantCreationEventCopyWithImpl<$Res>
    implements _$CreateRestaurantPressedCopyWith<$Res> {
  __$CreateRestaurantPressedCopyWithImpl(_CreateRestaurantPressed _value,
      $Res Function(_CreateRestaurantPressed) _then)
      : super(_value, (v) => _then(v as _CreateRestaurantPressed));

  @override
  _CreateRestaurantPressed get _value =>
      super._value as _CreateRestaurantPressed;
}

/// @nodoc
class _$_CreateRestaurantPressed implements _CreateRestaurantPressed {
  const _$_CreateRestaurantPressed();

  @override
  String toString() {
    return 'RestaurantCreationEvent.createRestaurantPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateRestaurantPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function() createRestaurantPressed,
  }) {
    return createRestaurantPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function()? createRestaurantPressed,
    required TResult orElse(),
  }) {
    if (createRestaurantPressed != null) {
      return createRestaurantPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_CreateRestaurantPressed value)
        createRestaurantPressed,
  }) {
    return createRestaurantPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_CreateRestaurantPressed value)? createRestaurantPressed,
    required TResult orElse(),
  }) {
    if (createRestaurantPressed != null) {
      return createRestaurantPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateRestaurantPressed implements RestaurantCreationEvent {
  const factory _CreateRestaurantPressed() = _$_CreateRestaurantPressed;
}

/// @nodoc
class _$RestaurantCreationStateTearOff {
  const _$RestaurantCreationStateTearOff();

  _RestaurantCreationState call(
      {required UniqueId id,
      required RestaurantName restaurantName,
      required UniqueId owner,
      required RestaurantRating averageRating,
      required RestaurantRating highestRating,
      required RestaurantRating lowestRating,
      required bool isSubmitting,
      required Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption}) {
    return _RestaurantCreationState(
      id: id,
      restaurantName: restaurantName,
      owner: owner,
      averageRating: averageRating,
      highestRating: highestRating,
      lowestRating: lowestRating,
      isSubmitting: isSubmitting,
      restaurantFailureOrSuccessOption: restaurantFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RestaurantCreationState = _$RestaurantCreationStateTearOff();

/// @nodoc
mixin _$RestaurantCreationState {
  UniqueId get id => throw _privateConstructorUsedError;
  RestaurantName get restaurantName => throw _privateConstructorUsedError;
  UniqueId get owner => throw _privateConstructorUsedError;
  RestaurantRating get averageRating => throw _privateConstructorUsedError;
  RestaurantRating get highestRating => throw _privateConstructorUsedError;
  RestaurantRating get lowestRating => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<RestaurantFailure, Unit>>
      get restaurantFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantCreationStateCopyWith<RestaurantCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCreationStateCopyWith<$Res> {
  factory $RestaurantCreationStateCopyWith(RestaurantCreationState value,
          $Res Function(RestaurantCreationState) then) =
      _$RestaurantCreationStateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      RestaurantName restaurantName,
      UniqueId owner,
      RestaurantRating averageRating,
      RestaurantRating highestRating,
      RestaurantRating lowestRating,
      bool isSubmitting,
      Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption});
}

/// @nodoc
class _$RestaurantCreationStateCopyWithImpl<$Res>
    implements $RestaurantCreationStateCopyWith<$Res> {
  _$RestaurantCreationStateCopyWithImpl(this._value, this._then);

  final RestaurantCreationState _value;
  // ignore: unused_field
  final $Res Function(RestaurantCreationState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? restaurantName = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
    Object? isSubmitting = freezed,
    Object? restaurantFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
abstract class _$RestaurantCreationStateCopyWith<$Res>
    implements $RestaurantCreationStateCopyWith<$Res> {
  factory _$RestaurantCreationStateCopyWith(_RestaurantCreationState value,
          $Res Function(_RestaurantCreationState) then) =
      __$RestaurantCreationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      RestaurantName restaurantName,
      UniqueId owner,
      RestaurantRating averageRating,
      RestaurantRating highestRating,
      RestaurantRating lowestRating,
      bool isSubmitting,
      Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption});
}

/// @nodoc
class __$RestaurantCreationStateCopyWithImpl<$Res>
    extends _$RestaurantCreationStateCopyWithImpl<$Res>
    implements _$RestaurantCreationStateCopyWith<$Res> {
  __$RestaurantCreationStateCopyWithImpl(_RestaurantCreationState _value,
      $Res Function(_RestaurantCreationState) _then)
      : super(_value, (v) => _then(v as _RestaurantCreationState));

  @override
  _RestaurantCreationState get _value =>
      super._value as _RestaurantCreationState;

  @override
  $Res call({
    Object? id = freezed,
    Object? restaurantName = freezed,
    Object? owner = freezed,
    Object? averageRating = freezed,
    Object? highestRating = freezed,
    Object? lowestRating = freezed,
    Object? isSubmitting = freezed,
    Object? restaurantFailureOrSuccessOption = freezed,
  }) {
    return _then(_RestaurantCreationState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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
      {required this.id,
      required this.restaurantName,
      required this.owner,
      required this.averageRating,
      required this.highestRating,
      required this.lowestRating,
      required this.isSubmitting,
      required this.restaurantFailureOrSuccessOption});

  @override
  final UniqueId id;
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
  final bool isSubmitting;
  @override
  final Option<Either<RestaurantFailure, Unit>>
      restaurantFailureOrSuccessOption;

  @override
  String toString() {
    return 'RestaurantCreationState(id: $id, restaurantName: $restaurantName, owner: $owner, averageRating: $averageRating, highestRating: $highestRating, lowestRating: $lowestRating, isSubmitting: $isSubmitting, restaurantFailureOrSuccessOption: $restaurantFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantCreationState &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(restaurantName) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(averageRating) ^
      const DeepCollectionEquality().hash(highestRating) ^
      const DeepCollectionEquality().hash(lowestRating) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(restaurantFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RestaurantCreationStateCopyWith<_RestaurantCreationState> get copyWith =>
      __$RestaurantCreationStateCopyWithImpl<_RestaurantCreationState>(
          this, _$identity);
}

abstract class _RestaurantCreationState implements RestaurantCreationState {
  const factory _RestaurantCreationState(
      {required UniqueId id,
      required RestaurantName restaurantName,
      required UniqueId owner,
      required RestaurantRating averageRating,
      required RestaurantRating highestRating,
      required RestaurantRating lowestRating,
      required bool isSubmitting,
      required Option<Either<RestaurantFailure, Unit>>
          restaurantFailureOrSuccessOption}) = _$_RestaurantCreationState;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
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
