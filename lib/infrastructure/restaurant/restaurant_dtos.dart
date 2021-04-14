import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/value_objects.dart';

part 'restaurant_dtos.freezed.dart';
part 'restaurant_dtos.g.dart';

@freezed
abstract class RestaurantDto implements _$RestaurantDto {
  const factory RestaurantDto({
    @JsonKey(ignore: true) String? id,
    required String name,
    required String owner,
    required double averageRating,
    required double highestRating,
    required double lowestRating,
  }) = _RestaurantDto;

  factory RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDtoFromJson(json);

  factory RestaurantDto.fromFirestore(DocumentSnapshot doc) {
    return RestaurantDto.fromJson(doc.data()!).copyWith(id: doc.id);
  }

  const RestaurantDto._();

  factory RestaurantDto.fromDomain(Restaurant restaurant) {
    return RestaurantDto(
      id: restaurant.id.getOrCrash(),
      name: restaurant.name.getOrCrash(),
      owner: restaurant.owner.getOrCrash(),
      averageRating: restaurant.averageRating.getOrCrash(),
      highestRating: restaurant.highestRating.getOrCrash(),
      lowestRating: restaurant.lowestRating.getOrCrash(),
    );
  }

  Restaurant toDomain() {
    return Restaurant(
      id: UniqueId.fromUniqueString(id ?? ''),
      name: RestaurantName(name),
      owner: UniqueId.fromUniqueString(owner),
      averageRating: RestaurantRating(averageRating),
      highestRating: RestaurantRating(highestRating),
      lowestRating: RestaurantRating(lowestRating),
    );
  }
}
