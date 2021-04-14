// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDto _$_$_RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _$_RestaurantDto(
    name: json['name'] as String,
    owner: json['owner'] as String,
    averageRating: (json['averageRating'] as num).toDouble(),
    highestRating: (json['highestRating'] as num).toDouble(),
    lowestRating: (json['lowestRating'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_RestaurantDtoToJson(_$_RestaurantDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'averageRating': instance.averageRating,
      'highestRating': instance.highestRating,
      'lowestRating': instance.lowestRating,
    };
