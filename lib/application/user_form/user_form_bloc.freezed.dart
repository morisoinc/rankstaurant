// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserFormEventTearOff {
  const _$UserFormEventTearOff();

  _Initialized initialized(Option<User> initialUserOption) {
    return _Initialized(
      initialUserOption,
    );
  }

  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

  _RoleChanged roleChanged(String roleStr) {
    return _RoleChanged(
      roleStr,
    );
  }

  _SaveUserPressed saveUserPressed() {
    return const _SaveUserPressed();
  }

  _DeleteUserPressed deleteUserPressed() {
    return const _DeleteUserPressed();
  }
}

/// @nodoc
const $UserFormEvent = _$UserFormEventTearOff();

/// @nodoc
mixin _$UserFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> initialUserOption) initialized,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() saveUserPressed,
    required TResult Function() deleteUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> initialUserOption)? initialized,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? saveUserPressed,
    TResult Function()? deleteUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_SaveUserPressed value) saveUserPressed,
    required TResult Function(_DeleteUserPressed value) deleteUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_SaveUserPressed value)? saveUserPressed,
    TResult Function(_DeleteUserPressed value)? deleteUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormEventCopyWith<$Res> {
  factory $UserFormEventCopyWith(
          UserFormEvent value, $Res Function(UserFormEvent) then) =
      _$UserFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserFormEventCopyWithImpl<$Res>
    implements $UserFormEventCopyWith<$Res> {
  _$UserFormEventCopyWithImpl(this._value, this._then);

  final UserFormEvent _value;
  // ignore: unused_field
  final $Res Function(UserFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<User> initialUserOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialUserOption = freezed,
  }) {
    return _then(_Initialized(
      initialUserOption == freezed
          ? _value.initialUserOption
          : initialUserOption // ignore: cast_nullable_to_non_nullable
              as Option<User>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUserOption);

  @override
  final Option<User> initialUserOption;

  @override
  String toString() {
    return 'UserFormEvent.initialized(initialUserOption: $initialUserOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialUserOption, initialUserOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialUserOption, initialUserOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialUserOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> initialUserOption) initialized,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() saveUserPressed,
    required TResult Function() deleteUserPressed,
  }) {
    return initialized(initialUserOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> initialUserOption)? initialized,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? saveUserPressed,
    TResult Function()? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_SaveUserPressed value) saveUserPressed,
    required TResult Function(_DeleteUserPressed value) deleteUserPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_SaveUserPressed value)? saveUserPressed,
    TResult Function(_DeleteUserPressed value)? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UserFormEvent {
  const factory _Initialized(Option<User> initialUserOption) = _$_Initialized;

  Option<User> get initialUserOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'UserFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> initialUserOption) initialized,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() saveUserPressed,
    required TResult Function() deleteUserPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> initialUserOption)? initialized,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? saveUserPressed,
    TResult Function()? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_SaveUserPressed value) saveUserPressed,
    required TResult Function(_DeleteUserPressed value) deleteUserPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_SaveUserPressed value)? saveUserPressed,
    TResult Function(_DeleteUserPressed value)? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements UserFormEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RoleChangedCopyWith<$Res> {
  factory _$RoleChangedCopyWith(
          _RoleChanged value, $Res Function(_RoleChanged) then) =
      __$RoleChangedCopyWithImpl<$Res>;
  $Res call({String roleStr});
}

/// @nodoc
class __$RoleChangedCopyWithImpl<$Res> extends _$UserFormEventCopyWithImpl<$Res>
    implements _$RoleChangedCopyWith<$Res> {
  __$RoleChangedCopyWithImpl(
      _RoleChanged _value, $Res Function(_RoleChanged) _then)
      : super(_value, (v) => _then(v as _RoleChanged));

  @override
  _RoleChanged get _value => super._value as _RoleChanged;

  @override
  $Res call({
    Object? roleStr = freezed,
  }) {
    return _then(_RoleChanged(
      roleStr == freezed
          ? _value.roleStr
          : roleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_RoleChanged implements _RoleChanged {
  const _$_RoleChanged(this.roleStr);

  @override
  final String roleStr;

  @override
  String toString() {
    return 'UserFormEvent.roleChanged(roleStr: $roleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoleChanged &&
            (identical(other.roleStr, roleStr) ||
                const DeepCollectionEquality().equals(other.roleStr, roleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roleStr);

  @JsonKey(ignore: true)
  @override
  _$RoleChangedCopyWith<_RoleChanged> get copyWith =>
      __$RoleChangedCopyWithImpl<_RoleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> initialUserOption) initialized,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() saveUserPressed,
    required TResult Function() deleteUserPressed,
  }) {
    return roleChanged(roleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> initialUserOption)? initialized,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? saveUserPressed,
    TResult Function()? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(roleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_SaveUserPressed value) saveUserPressed,
    required TResult Function(_DeleteUserPressed value) deleteUserPressed,
  }) {
    return roleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_SaveUserPressed value)? saveUserPressed,
    TResult Function(_DeleteUserPressed value)? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(this);
    }
    return orElse();
  }
}

abstract class _RoleChanged implements UserFormEvent {
  const factory _RoleChanged(String roleStr) = _$_RoleChanged;

  String get roleStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RoleChangedCopyWith<_RoleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveUserPressedCopyWith<$Res> {
  factory _$SaveUserPressedCopyWith(
          _SaveUserPressed value, $Res Function(_SaveUserPressed) then) =
      __$SaveUserPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveUserPressedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements _$SaveUserPressedCopyWith<$Res> {
  __$SaveUserPressedCopyWithImpl(
      _SaveUserPressed _value, $Res Function(_SaveUserPressed) _then)
      : super(_value, (v) => _then(v as _SaveUserPressed));

  @override
  _SaveUserPressed get _value => super._value as _SaveUserPressed;
}

/// @nodoc
class _$_SaveUserPressed implements _SaveUserPressed {
  const _$_SaveUserPressed();

  @override
  String toString() {
    return 'UserFormEvent.saveUserPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveUserPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> initialUserOption) initialized,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() saveUserPressed,
    required TResult Function() deleteUserPressed,
  }) {
    return saveUserPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> initialUserOption)? initialized,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? saveUserPressed,
    TResult Function()? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (saveUserPressed != null) {
      return saveUserPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_SaveUserPressed value) saveUserPressed,
    required TResult Function(_DeleteUserPressed value) deleteUserPressed,
  }) {
    return saveUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_SaveUserPressed value)? saveUserPressed,
    TResult Function(_DeleteUserPressed value)? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (saveUserPressed != null) {
      return saveUserPressed(this);
    }
    return orElse();
  }
}

abstract class _SaveUserPressed implements UserFormEvent {
  const factory _SaveUserPressed() = _$_SaveUserPressed;
}

/// @nodoc
abstract class _$DeleteUserPressedCopyWith<$Res> {
  factory _$DeleteUserPressedCopyWith(
          _DeleteUserPressed value, $Res Function(_DeleteUserPressed) then) =
      __$DeleteUserPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteUserPressedCopyWithImpl<$Res>
    extends _$UserFormEventCopyWithImpl<$Res>
    implements _$DeleteUserPressedCopyWith<$Res> {
  __$DeleteUserPressedCopyWithImpl(
      _DeleteUserPressed _value, $Res Function(_DeleteUserPressed) _then)
      : super(_value, (v) => _then(v as _DeleteUserPressed));

  @override
  _DeleteUserPressed get _value => super._value as _DeleteUserPressed;
}

/// @nodoc
class _$_DeleteUserPressed implements _DeleteUserPressed {
  const _$_DeleteUserPressed();

  @override
  String toString() {
    return 'UserFormEvent.deleteUserPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteUserPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<User> initialUserOption) initialized,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() saveUserPressed,
    required TResult Function() deleteUserPressed,
  }) {
    return deleteUserPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<User> initialUserOption)? initialized,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? saveUserPressed,
    TResult Function()? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (deleteUserPressed != null) {
      return deleteUserPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RoleChanged value) roleChanged,
    required TResult Function(_SaveUserPressed value) saveUserPressed,
    required TResult Function(_DeleteUserPressed value) deleteUserPressed,
  }) {
    return deleteUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RoleChanged value)? roleChanged,
    TResult Function(_SaveUserPressed value)? saveUserPressed,
    TResult Function(_DeleteUserPressed value)? deleteUserPressed,
    required TResult orElse(),
  }) {
    if (deleteUserPressed != null) {
      return deleteUserPressed(this);
    }
    return orElse();
  }
}

abstract class _DeleteUserPressed implements UserFormEvent {
  const factory _DeleteUserPressed() = _$_DeleteUserPressed;
}

/// @nodoc
class _$UserFormStateTearOff {
  const _$UserFormStateTearOff();

  _UserFormState call(
      {required User user,
      required bool isSubmitting,
      required Option<Either<UserFailure, Unit>> userFailureOrSuccessOption}) {
    return _UserFormState(
      user: user,
      isSubmitting: isSubmitting,
      userFailureOrSuccessOption: userFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UserFormState = _$UserFormStateTearOff();

/// @nodoc
mixin _$UserFormState {
  User get user => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<UserFailure, Unit>> get userFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserFormStateCopyWith<UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormStateCopyWith<$Res> {
  factory $UserFormStateCopyWith(
          UserFormState value, $Res Function(UserFormState) then) =
      _$UserFormStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      bool isSubmitting,
      Option<Either<UserFailure, Unit>> userFailureOrSuccessOption});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserFormStateCopyWithImpl<$Res>
    implements $UserFormStateCopyWith<$Res> {
  _$UserFormStateCopyWithImpl(this._value, this._then);

  final UserFormState _value;
  // ignore: unused_field
  final $Res Function(UserFormState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isSubmitting = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
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
abstract class _$UserFormStateCopyWith<$Res>
    implements $UserFormStateCopyWith<$Res> {
  factory _$UserFormStateCopyWith(
          _UserFormState value, $Res Function(_UserFormState) then) =
      __$UserFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      bool isSubmitting,
      Option<Either<UserFailure, Unit>> userFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$UserFormStateCopyWithImpl<$Res>
    extends _$UserFormStateCopyWithImpl<$Res>
    implements _$UserFormStateCopyWith<$Res> {
  __$UserFormStateCopyWithImpl(
      _UserFormState _value, $Res Function(_UserFormState) _then)
      : super(_value, (v) => _then(v as _UserFormState));

  @override
  _UserFormState get _value => super._value as _UserFormState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isSubmitting = freezed,
    Object? userFailureOrSuccessOption = freezed,
  }) {
    return _then(_UserFormState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      userFailureOrSuccessOption: userFailureOrSuccessOption == freezed
          ? _value.userFailureOrSuccessOption
          : userFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UserFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_UserFormState implements _UserFormState {
  const _$_UserFormState(
      {required this.user,
      required this.isSubmitting,
      required this.userFailureOrSuccessOption});

  @override
  final User user;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<UserFailure, Unit>> userFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserFormState(user: $user, isSubmitting: $isSubmitting, userFailureOrSuccessOption: $userFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserFormState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.userFailureOrSuccessOption,
                    userFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.userFailureOrSuccessOption,
                    userFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(userFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$UserFormStateCopyWith<_UserFormState> get copyWith =>
      __$UserFormStateCopyWithImpl<_UserFormState>(this, _$identity);
}

abstract class _UserFormState implements UserFormState {
  const factory _UserFormState(
      {required User user,
      required bool isSubmitting,
      required Option<Either<UserFailure, Unit>>
          userFailureOrSuccessOption}) = _$_UserFormState;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<UserFailure, Unit>> get userFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserFormStateCopyWith<_UserFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
