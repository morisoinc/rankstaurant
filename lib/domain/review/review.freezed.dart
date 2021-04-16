// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(
      {required UniqueId id,
      required ReviewBody reviewBody,
      required ReviewRating reviewRating}) {
    return _Review(
      id: id,
      reviewBody: reviewBody,
      reviewRating: reviewRating,
    );
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  UniqueId get id => throw _privateConstructorUsedError;
  ReviewBody get reviewBody => throw _privateConstructorUsedError;
  ReviewRating get reviewRating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call({UniqueId id, ReviewBody reviewBody, ReviewRating reviewRating});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewBody = freezed,
    Object? reviewRating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      reviewBody: reviewBody == freezed
          ? _value.reviewBody
          : reviewBody // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      reviewRating: reviewRating == freezed
          ? _value.reviewRating
          : reviewRating // ignore: cast_nullable_to_non_nullable
              as ReviewRating,
    ));
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ReviewBody reviewBody, ReviewRating reviewRating});
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object? id = freezed,
    Object? reviewBody = freezed,
    Object? reviewRating = freezed,
  }) {
    return _then(_Review(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      reviewBody: reviewBody == freezed
          ? _value.reviewBody
          : reviewBody // ignore: cast_nullable_to_non_nullable
              as ReviewBody,
      reviewRating: reviewRating == freezed
          ? _value.reviewRating
          : reviewRating // ignore: cast_nullable_to_non_nullable
              as ReviewRating,
    ));
  }
}

/// @nodoc
class _$_Review extends _Review {
  const _$_Review(
      {required this.id, required this.reviewBody, required this.reviewRating})
      : super._();

  @override
  final UniqueId id;
  @override
  final ReviewBody reviewBody;
  @override
  final ReviewRating reviewRating;

  @override
  String toString() {
    return 'Review(id: $id, reviewBody: $reviewBody, reviewRating: $reviewRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.reviewBody, reviewBody) ||
                const DeepCollectionEquality()
                    .equals(other.reviewBody, reviewBody)) &&
            (identical(other.reviewRating, reviewRating) ||
                const DeepCollectionEquality()
                    .equals(other.reviewRating, reviewRating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(reviewBody) ^
      const DeepCollectionEquality().hash(reviewRating);

  @JsonKey(ignore: true)
  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);
}

abstract class _Review extends Review {
  const factory _Review(
      {required UniqueId id,
      required ReviewBody reviewBody,
      required ReviewRating reviewRating}) = _$_Review;
  const _Review._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  ReviewBody get reviewBody => throw _privateConstructorUsedError;
  @override
  ReviewRating get reviewRating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<_Review> get copyWith => throw _privateConstructorUsedError;
}
