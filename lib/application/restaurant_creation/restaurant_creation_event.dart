part of 'restaurant_creation_bloc.dart';

@freezed
abstract class RestaurantCreationEvent with _$RestaurantCreationEvent {
  const factory RestaurantCreationEvent.nameChanged(String nameStr) =
      _NameChanged;
  const factory RestaurantCreationEvent.createRestaurantPressed() =
      _CreateRestaurantPressed;
}
