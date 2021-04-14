import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';

part 'restaurants_event.dart';
part 'restaurants_state.dart';
part 'restaurants_bloc.freezed.dart';

@injectable
class RestaurantsBloc extends Bloc<RestaurantsEvent, RestaurantsState> {
  RestaurantsBloc(this._restaurantRepository)
      : super(const RestaurantsState.initial());

  final IRestaurantRepository _restaurantRepository;

  StreamSubscription<Either<RestaurantFailure, KtList<Restaurant>>>?
      _subscription;

  @override
  Stream<RestaurantsState> mapEventToState(
    RestaurantsEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const RestaurantsState.loading();
        await _subscription?.cancel();
        _subscription = _restaurantRepository.watchAll().listen(
              (failureOrRestaurants) => add(
                  RestaurantsEvent.restaurantsReceived(failureOrRestaurants)),
            );
      },
      watchOwn: (e) async* {
        yield const RestaurantsState.loading();
        await _subscription?.cancel();
        _subscription = _restaurantRepository.watchOwn().listen(
              (failureOrRestaurants) => add(
                  RestaurantsEvent.restaurantsReceived(failureOrRestaurants)),
            );
      },
      restaurantsReceived: (e) async* {
        yield e.failureOrRestaurants.fold(
          (l) => RestaurantsState.fail(l),
          (restaurants) => RestaurantsState.loaded(restaurants),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
