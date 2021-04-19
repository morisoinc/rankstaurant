part of 'restaurant_form_bloc.dart';

@freezed
abstract class RestaurantFormEvent with _$RestaurantFormEvent {
  const factory RestaurantFormEvent.initialized(
      Option<Restaurant> initialRestaurantOption) = _Initialized;
  const factory RestaurantFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory RestaurantFormEvent.saveRestaurantPressed() =
      _SaveRestaurantPressed;
  const factory RestaurantFormEvent.deleteRestaurantPressed() =
      _DeleteRestaurantPressed;
}
