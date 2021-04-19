import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';

part 'restaurant_self_event.dart';
part 'restaurant_self_state.dart';

part 'restaurant_self_bloc.freezed.dart';

@injectable
class RestaurantSelfBloc
    extends Bloc<RestaurantSelfEvent, RestaurantSelfState> {
  RestaurantSelfBloc(this._restaurantRepository)
      : super(RestaurantSelfState.initial());

  final IRestaurantRepository _restaurantRepository;
  StreamSubscription<Either<RestaurantFailure, Restaurant>>? _subscription;

  @override
  Stream<RestaurantSelfState> mapEventToState(
    RestaurantSelfEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.restaurantOption.fold(() => state,
            (restaurant) => RestaurantSelfState(restaurant: restaurant));
      },
      watch: (e) async* {
        await _subscription?.cancel();
        _subscription = _restaurantRepository.watch(e.restaurant).listen(
              (failureOrRestaurant) =>
                  add(RestaurantSelfEvent.received(failureOrRestaurant)),
            );
      },
      received: (e) async* {
        yield e.failureOrRestaurant.fold(
          (l) => RestaurantSelfState.fail(l),
          (restaurant) => RestaurantSelfState.loaded(restaurant),
        );
      },
    );
  }
}
