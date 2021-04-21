// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  _WatchSelf watchSelf() {
    return const _WatchSelf();
  }

  _Received received(Either<UserFailure, User> failureOrUser) {
    return _Received(
      failureOrUser,
    );
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchSelf,
    required TResult Function(Either<UserFailure, User> failureOrUser) received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchSelf,
    TResult Function(Either<UserFailure, User> failureOrUser)? received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchSelf value) watchSelf,
    required TResult Function(_Received value) received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchSelf value)? watchSelf,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$WatchSelfCopyWith<$Res> {
  factory _$WatchSelfCopyWith(
          _WatchSelf value, $Res Function(_WatchSelf) then) =
      __$WatchSelfCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchSelfCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$WatchSelfCopyWith<$Res> {
  __$WatchSelfCopyWithImpl(_WatchSelf _value, $Res Function(_WatchSelf) _then)
      : super(_value, (v) => _then(v as _WatchSelf));

  @override
  _WatchSelf get _value => super._value as _WatchSelf;
}

/// @nodoc
class _$_WatchSelf implements _WatchSelf {
  const _$_WatchSelf();

  @override
  String toString() {
    return 'UserEvent.watchSelf()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchSelf);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchSelf,
    required TResult Function(Either<UserFailure, User> failureOrUser) received,
  }) {
    return watchSelf();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchSelf,
    TResult Function(Either<UserFailure, User> failureOrUser)? received,
    required TResult orElse(),
  }) {
    if (watchSelf != null) {
      return watchSelf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchSelf value) watchSelf,
    required TResult Function(_Received value) received,
  }) {
    return watchSelf(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchSelf value)? watchSelf,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) {
    if (watchSelf != null) {
      return watchSelf(this);
    }
    return orElse();
  }
}

abstract class _WatchSelf implements UserEvent {
  const factory _WatchSelf() = _$_WatchSelf;
}

/// @nodoc
abstract class _$ReceivedCopyWith<$Res> {
  factory _$ReceivedCopyWith(_Received value, $Res Function(_Received) then) =
      __$ReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, User> failureOrUser});
}

/// @nodoc
class __$ReceivedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$ReceivedCopyWith<$Res> {
  __$ReceivedCopyWithImpl(_Received _value, $Res Function(_Received) _then)
      : super(_value, (v) => _then(v as _Received));

  @override
  _Received get _value => super._value as _Received;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(_Received(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, User>,
    ));
  }
}

/// @nodoc
class _$_Received implements _Received {
  const _$_Received(this.failureOrUser);

  @override
  final Either<UserFailure, User> failureOrUser;

  @override
  String toString() {
    return 'UserEvent.received(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Received &&
            (identical(other.failureOrUser, failureOrUser) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @JsonKey(ignore: true)
  @override
  _$ReceivedCopyWith<_Received> get copyWith =>
      __$ReceivedCopyWithImpl<_Received>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchSelf,
    required TResult Function(Either<UserFailure, User> failureOrUser) received,
  }) {
    return received(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchSelf,
    TResult Function(Either<UserFailure, User> failureOrUser)? received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchSelf value) watchSelf,
    required TResult Function(_Received value) received,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchSelf value)? watchSelf,
    TResult Function(_Received value)? received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _Received implements UserEvent {
  const factory _Received(Either<UserFailure, User> failureOrUser) =
      _$_Received;

  Either<UserFailure, User> get failureOrUser =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReceivedCopyWith<_Received> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _UserState call() {
    return const _UserState();
  }

  _Loaded loaded(User user) {
    return _Loaded(
      user,
    );
  }

  _Fail fail(UserFailure failure) {
    return _Fail(
      failure,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) loaded,
    required TResult Function(UserFailure failure) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? loaded,
    TResult Function(UserFailure failure)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Fail value)? fail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;
}

/// @nodoc
class _$_UserState implements _UserState {
  const _$_UserState();

  @override
  String toString() {
    return 'UserState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) loaded,
    required TResult Function(UserFailure failure) fail,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? loaded,
    TResult Function(UserFailure failure)? fail,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
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

abstract class _UserState implements UserState {
  const factory _UserState() = _$_UserState;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Loaded(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  _$_Loaded(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(User user) loaded,
    required TResult Function(UserFailure failure) fail,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? loaded,
    TResult Function(UserFailure failure)? fail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
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

abstract class _Loaded implements UserState {
  factory _Loaded(User user) = _$_Loaded;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailCopyWith<$Res> {
  factory _$FailCopyWith(_Fail value, $Res Function(_Fail) then) =
      __$FailCopyWithImpl<$Res>;
  $Res call({UserFailure failure});

  $UserFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
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
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get failure {
    return $UserFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Fail implements _Fail {
  _$_Fail(this.failure);

  @override
  final UserFailure failure;

  @override
  String toString() {
    return 'UserState.fail(failure: $failure)';
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
    TResult Function() $default, {
    required TResult Function(User user) loaded,
    required TResult Function(UserFailure failure) fail,
  }) {
    return fail(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(User user)? loaded,
    TResult Function(UserFailure failure)? fail,
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
    TResult Function(_UserState value) $default, {
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Fail value) fail,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
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

abstract class _Fail implements UserState {
  factory _Fail(UserFailure failure) = _$_Fail;

  UserFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailCopyWith<_Fail> get copyWith => throw _privateConstructorUsedError;
}
