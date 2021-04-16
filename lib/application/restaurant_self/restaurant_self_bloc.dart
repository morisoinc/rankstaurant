import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';

part 'restaurant_self_event.dart';
part 'restaurant_self_state.dart';

part 'restaurant_self_bloc.freezed.dart';

@injectable
class RestaurantSelfBloc
    extends Bloc<RestaurantSelfEvent, RestaurantSelfState> {
  RestaurantSelfBloc() : super(RestaurantSelfState.initial());

  @override
  Stream<RestaurantSelfState> mapEventToState(
    RestaurantSelfEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.restaurantOption.fold(() => state,
            (restaurant) => state.copyWith(restaurant: restaurant));
      },
    );
  }
}
