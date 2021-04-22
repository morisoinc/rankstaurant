// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'restaurants_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantsFilterEventTearOff {
  const _$RestaurantsFilterEventTearOff();

  _FilterChanged filterChanged({required int? ratingFilter}) {
    return _FilterChanged(
      ratingFilter: ratingFilter,
    );
  }
}

/// @nodoc
const $RestaurantsFilterEvent = _$RestaurantsFilterEventTearOff();

/// @nodoc
mixin _$RestaurantsFilterEvent {
  int? get ratingFilter => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? ratingFilter) filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? ratingFilter)? filterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterChanged value) filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantsFilterEventCopyWith<RestaurantsFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsFilterEventCopyWith<$Res> {
  factory $RestaurantsFilterEventCopyWith(RestaurantsFilterEvent value,
          $Res Function(RestaurantsFilterEvent) then) =
      _$RestaurantsFilterEventCopyWithImpl<$Res>;
  $Res call({int? ratingFilter});
}

/// @nodoc
class _$RestaurantsFilterEventCopyWithImpl<$Res>
    implements $RestaurantsFilterEventCopyWith<$Res> {
  _$RestaurantsFilterEventCopyWithImpl(this._value, this._then);

  final RestaurantsFilterEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantsFilterEvent) _then;

  @override
  $Res call({
    Object? ratingFilter = freezed,
  }) {
    return _then(_value.copyWith(
      ratingFilter: ratingFilter == freezed
          ? _value.ratingFilter
          : ratingFilter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FilterChangedCopyWith<$Res>
    implements $RestaurantsFilterEventCopyWith<$Res> {
  factory _$FilterChangedCopyWith(
          _FilterChanged value, $Res Function(_FilterChanged) then) =
      __$FilterChangedCopyWithImpl<$Res>;
  @override
  $Res call({int? ratingFilter});
}

/// @nodoc
class __$FilterChangedCopyWithImpl<$Res>
    extends _$RestaurantsFilterEventCopyWithImpl<$Res>
    implements _$FilterChangedCopyWith<$Res> {
  __$FilterChangedCopyWithImpl(
      _FilterChanged _value, $Res Function(_FilterChanged) _then)
      : super(_value, (v) => _then(v as _FilterChanged));

  @override
  _FilterChanged get _value => super._value as _FilterChanged;

  @override
  $Res call({
    Object? ratingFilter = freezed,
  }) {
    return _then(_FilterChanged(
      ratingFilter: ratingFilter == freezed
          ? _value.ratingFilter
          : ratingFilter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_FilterChanged implements _FilterChanged {
  const _$_FilterChanged({required this.ratingFilter});

  @override
  final int? ratingFilter;

  @override
  String toString() {
    return 'RestaurantsFilterEvent.filterChanged(ratingFilter: $ratingFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterChanged &&
            (identical(other.ratingFilter, ratingFilter) ||
                const DeepCollectionEquality()
                    .equals(other.ratingFilter, ratingFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ratingFilter);

  @JsonKey(ignore: true)
  @override
  _$FilterChangedCopyWith<_FilterChanged> get copyWith =>
      __$FilterChangedCopyWithImpl<_FilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? ratingFilter) filterChanged,
  }) {
    return filterChanged(ratingFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? ratingFilter)? filterChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(ratingFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterChanged value) filterChanged,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class _FilterChanged implements RestaurantsFilterEvent {
  const factory _FilterChanged({required int? ratingFilter}) = _$_FilterChanged;

  @override
  int? get ratingFilter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterChangedCopyWith<_FilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RestaurantsFilterStateTearOff {
  const _$RestaurantsFilterStateTearOff();

  _RestaurantsFilterState call({required int? ratingFilter}) {
    return _RestaurantsFilterState(
      ratingFilter: ratingFilter,
    );
  }
}

/// @nodoc
const $RestaurantsFilterState = _$RestaurantsFilterStateTearOff();

/// @nodoc
mixin _$RestaurantsFilterState {
  int? get ratingFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantsFilterStateCopyWith<RestaurantsFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsFilterStateCopyWith<$Res> {
  factory $RestaurantsFilterStateCopyWith(RestaurantsFilterState value,
          $Res Function(RestaurantsFilterState) then) =
      _$RestaurantsFilterStateCopyWithImpl<$Res>;
  $Res call({int? ratingFilter});
}

/// @nodoc
class _$RestaurantsFilterStateCopyWithImpl<$Res>
    implements $RestaurantsFilterStateCopyWith<$Res> {
  _$RestaurantsFilterStateCopyWithImpl(this._value, this._then);

  final RestaurantsFilterState _value;
  // ignore: unused_field
  final $Res Function(RestaurantsFilterState) _then;

  @override
  $Res call({
    Object? ratingFilter = freezed,
  }) {
    return _then(_value.copyWith(
      ratingFilter: ratingFilter == freezed
          ? _value.ratingFilter
          : ratingFilter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantsFilterStateCopyWith<$Res>
    implements $RestaurantsFilterStateCopyWith<$Res> {
  factory _$RestaurantsFilterStateCopyWith(_RestaurantsFilterState value,
          $Res Function(_RestaurantsFilterState) then) =
      __$RestaurantsFilterStateCopyWithImpl<$Res>;
  @override
  $Res call({int? ratingFilter});
}

/// @nodoc
class __$RestaurantsFilterStateCopyWithImpl<$Res>
    extends _$RestaurantsFilterStateCopyWithImpl<$Res>
    implements _$RestaurantsFilterStateCopyWith<$Res> {
  __$RestaurantsFilterStateCopyWithImpl(_RestaurantsFilterState _value,
      $Res Function(_RestaurantsFilterState) _then)
      : super(_value, (v) => _then(v as _RestaurantsFilterState));

  @override
  _RestaurantsFilterState get _value => super._value as _RestaurantsFilterState;

  @override
  $Res call({
    Object? ratingFilter = freezed,
  }) {
    return _then(_RestaurantsFilterState(
      ratingFilter: ratingFilter == freezed
          ? _value.ratingFilter
          : ratingFilter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
class _$_RestaurantsFilterState implements _RestaurantsFilterState {
  const _$_RestaurantsFilterState({required this.ratingFilter});

  @override
  final int? ratingFilter;

  @override
  String toString() {
    return 'RestaurantsFilterState(ratingFilter: $ratingFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantsFilterState &&
            (identical(other.ratingFilter, ratingFilter) ||
                const DeepCollectionEquality()
                    .equals(other.ratingFilter, ratingFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ratingFilter);

  @JsonKey(ignore: true)
  @override
  _$RestaurantsFilterStateCopyWith<_RestaurantsFilterState> get copyWith =>
      __$RestaurantsFilterStateCopyWithImpl<_RestaurantsFilterState>(
          this, _$identity);
}

abstract class _RestaurantsFilterState implements RestaurantsFilterState {
  const factory _RestaurantsFilterState({required int? ratingFilter}) =
      _$_RestaurantsFilterState;

  @override
  int? get ratingFilter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RestaurantsFilterStateCopyWith<_RestaurantsFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
