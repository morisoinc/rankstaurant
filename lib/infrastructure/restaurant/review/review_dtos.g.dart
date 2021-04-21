// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDto _$_$_ReviewDtoFromJson(Map<String, dynamic> json) {
  return _$_ReviewDto(
    body: json['body'] as String,
    rating: json['rating'] as int,
    response: json['response'] as String,
    archived: json['archived'] as bool,
    serverTimeStamp: const TimestampConverter()
        .fromJson(json['serverTimeStamp'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_ReviewDtoToJson(_$_ReviewDto instance) =>
    <String, dynamic>{
      'body': instance.body,
      'rating': instance.rating,
      'response': instance.response,
      'archived': instance.archived,
      'serverTimeStamp':
          const TimestampConverter().toJson(instance.serverTimeStamp),
    };
