// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDto _$_$_ReviewDtoFromJson(Map<String, dynamic> json) {
  return _$_ReviewDto(
    reviewBody: json['reviewBody'] as String,
    reviewRating: json['reviewRating'] as int,
    serverTimeStamp: const ServerTimestampConverter()
        .fromJson(json['serverTimeStamp'] as Object),
  );
}

Map<String, dynamic> _$_$_ReviewDtoToJson(_$_ReviewDto instance) =>
    <String, dynamic>{
      'reviewBody': instance.reviewBody,
      'reviewRating': instance.reviewRating,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
