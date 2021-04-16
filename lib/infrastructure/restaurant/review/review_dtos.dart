import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/review/review.dart';
import 'package:rankstaurant/domain/review/value_objects.dart';
import 'package:rankstaurant/infrastructure/core/firestore_helpers.dart';

part 'review_dtos.freezed.dart';
part 'review_dtos.g.dart';

@freezed
abstract class ReviewDto implements _$ReviewDto {
  const factory ReviewDto({
    @JsonKey(ignore: true) String? id,
    required String reviewBody,
    required int reviewRating,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  factory ReviewDto.fromFirestore(DocumentSnapshot doc) {
    return ReviewDto.fromJson(doc.data()!).copyWith(id: doc.id);
  }

  const ReviewDto._();

  factory ReviewDto.fromDomain(Review review) {
    return ReviewDto(
      id: review.id.getOrCrash(),
      reviewBody: review.reviewBody.getOrCrash(),
      reviewRating: review.reviewRating.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Review toDomain() {
    return Review(
      id: UniqueId.fromUniqueString(id ?? ''),
      reviewBody: ReviewBody(reviewBody),
      reviewRating: ReviewRating(reviewRating),
    );
  }
}
