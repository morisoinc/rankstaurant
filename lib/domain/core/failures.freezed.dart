// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required String failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidUserRole<T> invalidUserRole<T>({required String failedValue}) {
    return InvalidUserRole<T>(
      failedValue: failedValue,
    );
  }

  LongRestaurantName<T> longRestaurantName<T>({required String failedValue}) {
    return LongRestaurantName<T>(
      failedValue: failedValue,
    );
  }

  InvalidRestaurantRating<T> invalidRestaurantRating<T>(
      {required double failedValue}) {
    return InvalidRestaurantRating<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidUserRole,
    required TResult Function(String failedValue) longRestaurantName,
    required TResult Function(double failedValue) invalidRestaurantRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidUserRole,
    TResult Function(String failedValue)? longRestaurantName,
    TResult Function(double failedValue)? invalidRestaurantRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUserRole<T> value) invalidUserRole,
    required TResult Function(LongRestaurantName<T> value) longRestaurantName,
    required TResult Function(InvalidRestaurantRating<T> value)
        invalidRestaurantRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUserRole<T> value)? invalidUserRole,
    TResult Function(LongRestaurantName<T> value)? longRestaurantName,
    TResult Function(InvalidRestaurantRating<T> value)? invalidRestaurantRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidUserRole,
    required TResult Function(String failedValue) longRestaurantName,
    required TResult Function(double failedValue) invalidRestaurantRating,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidUserRole,
    TResult Function(String failedValue)? longRestaurantName,
    TResult Function(double failedValue)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUserRole<T> value) invalidUserRole,
    required TResult Function(LongRestaurantName<T> value) longRestaurantName,
    required TResult Function(InvalidRestaurantRating<T> value)
        invalidRestaurantRating,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUserRole<T> value)? invalidUserRole,
    TResult Function(LongRestaurantName<T> value)? longRestaurantName,
    TResult Function(InvalidRestaurantRating<T> value)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required String failedValue}) = _$InvalidEmail<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidUserRole,
    required TResult Function(String failedValue) longRestaurantName,
    required TResult Function(double failedValue) invalidRestaurantRating,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidUserRole,
    TResult Function(String failedValue)? longRestaurantName,
    TResult Function(double failedValue)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUserRole<T> value) invalidUserRole,
    required TResult Function(LongRestaurantName<T> value) longRestaurantName,
    required TResult Function(InvalidRestaurantRating<T> value)
        invalidRestaurantRating,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUserRole<T> value)? invalidUserRole,
    TResult Function(LongRestaurantName<T> value)? longRestaurantName,
    TResult Function(InvalidRestaurantRating<T> value)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUserRoleCopyWith<T, $Res> {
  factory $InvalidUserRoleCopyWith(
          InvalidUserRole<T> value, $Res Function(InvalidUserRole<T>) then) =
      _$InvalidUserRoleCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidUserRoleCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUserRoleCopyWith<T, $Res> {
  _$InvalidUserRoleCopyWithImpl(
      InvalidUserRole<T> _value, $Res Function(InvalidUserRole<T>) _then)
      : super(_value, (v) => _then(v as InvalidUserRole<T>));

  @override
  InvalidUserRole<T> get _value => super._value as InvalidUserRole<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidUserRole<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$InvalidUserRole<T> implements InvalidUserRole<T> {
  const _$InvalidUserRole({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUserRole(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUserRole<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidUserRoleCopyWith<T, InvalidUserRole<T>> get copyWith =>
      _$InvalidUserRoleCopyWithImpl<T, InvalidUserRole<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidUserRole,
    required TResult Function(String failedValue) longRestaurantName,
    required TResult Function(double failedValue) invalidRestaurantRating,
  }) {
    return invalidUserRole(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidUserRole,
    TResult Function(String failedValue)? longRestaurantName,
    TResult Function(double failedValue)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (invalidUserRole != null) {
      return invalidUserRole(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUserRole<T> value) invalidUserRole,
    required TResult Function(LongRestaurantName<T> value) longRestaurantName,
    required TResult Function(InvalidRestaurantRating<T> value)
        invalidRestaurantRating,
  }) {
    return invalidUserRole(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUserRole<T> value)? invalidUserRole,
    TResult Function(LongRestaurantName<T> value)? longRestaurantName,
    TResult Function(InvalidRestaurantRating<T> value)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (invalidUserRole != null) {
      return invalidUserRole(this);
    }
    return orElse();
  }
}

abstract class InvalidUserRole<T> implements ValueFailure<T> {
  const factory InvalidUserRole({required String failedValue}) =
      _$InvalidUserRole<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidUserRoleCopyWith<T, InvalidUserRole<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LongRestaurantNameCopyWith<T, $Res> {
  factory $LongRestaurantNameCopyWith(LongRestaurantName<T> value,
          $Res Function(LongRestaurantName<T>) then) =
      _$LongRestaurantNameCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$LongRestaurantNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $LongRestaurantNameCopyWith<T, $Res> {
  _$LongRestaurantNameCopyWithImpl(
      LongRestaurantName<T> _value, $Res Function(LongRestaurantName<T>) _then)
      : super(_value, (v) => _then(v as LongRestaurantName<T>));

  @override
  LongRestaurantName<T> get _value => super._value as LongRestaurantName<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(LongRestaurantName<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$LongRestaurantName<T> implements LongRestaurantName<T> {
  const _$LongRestaurantName({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.longRestaurantName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LongRestaurantName<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $LongRestaurantNameCopyWith<T, LongRestaurantName<T>> get copyWith =>
      _$LongRestaurantNameCopyWithImpl<T, LongRestaurantName<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidUserRole,
    required TResult Function(String failedValue) longRestaurantName,
    required TResult Function(double failedValue) invalidRestaurantRating,
  }) {
    return longRestaurantName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidUserRole,
    TResult Function(String failedValue)? longRestaurantName,
    TResult Function(double failedValue)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (longRestaurantName != null) {
      return longRestaurantName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUserRole<T> value) invalidUserRole,
    required TResult Function(LongRestaurantName<T> value) longRestaurantName,
    required TResult Function(InvalidRestaurantRating<T> value)
        invalidRestaurantRating,
  }) {
    return longRestaurantName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUserRole<T> value)? invalidUserRole,
    TResult Function(LongRestaurantName<T> value)? longRestaurantName,
    TResult Function(InvalidRestaurantRating<T> value)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (longRestaurantName != null) {
      return longRestaurantName(this);
    }
    return orElse();
  }
}

abstract class LongRestaurantName<T> implements ValueFailure<T> {
  const factory LongRestaurantName({required String failedValue}) =
      _$LongRestaurantName<T>;

  String get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LongRestaurantNameCopyWith<T, LongRestaurantName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidRestaurantRatingCopyWith<T, $Res> {
  factory $InvalidRestaurantRatingCopyWith(InvalidRestaurantRating<T> value,
          $Res Function(InvalidRestaurantRating<T>) then) =
      _$InvalidRestaurantRatingCopyWithImpl<T, $Res>;
  $Res call({double failedValue});
}

/// @nodoc
class _$InvalidRestaurantRatingCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidRestaurantRatingCopyWith<T, $Res> {
  _$InvalidRestaurantRatingCopyWithImpl(InvalidRestaurantRating<T> _value,
      $Res Function(InvalidRestaurantRating<T>) _then)
      : super(_value, (v) => _then(v as InvalidRestaurantRating<T>));

  @override
  InvalidRestaurantRating<T> get _value =>
      super._value as InvalidRestaurantRating<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidRestaurantRating<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
class _$InvalidRestaurantRating<T> implements InvalidRestaurantRating<T> {
  const _$InvalidRestaurantRating({required this.failedValue});

  @override
  final double failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidRestaurantRating(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidRestaurantRating<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidRestaurantRatingCopyWith<T, InvalidRestaurantRating<T>>
      get copyWith =>
          _$InvalidRestaurantRatingCopyWithImpl<T, InvalidRestaurantRating<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(String failedValue) shortPassword,
    required TResult Function(String failedValue) invalidUserRole,
    required TResult Function(String failedValue) longRestaurantName,
    required TResult Function(double failedValue) invalidRestaurantRating,
  }) {
    return invalidRestaurantRating(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(String failedValue)? shortPassword,
    TResult Function(String failedValue)? invalidUserRole,
    TResult Function(String failedValue)? longRestaurantName,
    TResult Function(double failedValue)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (invalidRestaurantRating != null) {
      return invalidRestaurantRating(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidUserRole<T> value) invalidUserRole,
    required TResult Function(LongRestaurantName<T> value) longRestaurantName,
    required TResult Function(InvalidRestaurantRating<T> value)
        invalidRestaurantRating,
  }) {
    return invalidRestaurantRating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidUserRole<T> value)? invalidUserRole,
    TResult Function(LongRestaurantName<T> value)? longRestaurantName,
    TResult Function(InvalidRestaurantRating<T> value)? invalidRestaurantRating,
    required TResult orElse(),
  }) {
    if (invalidRestaurantRating != null) {
      return invalidRestaurantRating(this);
    }
    return orElse();
  }
}

abstract class InvalidRestaurantRating<T> implements ValueFailure<T> {
  const factory InvalidRestaurantRating({required double failedValue}) =
      _$InvalidRestaurantRating<T>;

  double get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidRestaurantRatingCopyWith<T, InvalidRestaurantRating<T>>
      get copyWith => throw _privateConstructorUsedError;
}
