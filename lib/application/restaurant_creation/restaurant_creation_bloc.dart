import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankstaurant/domain/core/value_objects.dart';
import 'package:rankstaurant/domain/restaurant/i_restaurant_repository.dart';
import 'package:rankstaurant/domain/restaurant/restaurant.dart';
import 'package:rankstaurant/domain/restaurant/restaurant_failure.dart';
import 'package:rankstaurant/domain/restaurant/value_objects.dart';

part 'restaurant_creation_event.dart';
part 'restaurant_creation_state.dart';

part 'restaurant_creation_bloc.freezed.dart';

@injectable
class RestaurantCreationBloc
    extends Bloc<RestaurantCreationEvent, RestaurantCreationState> {
  RestaurantCreationBloc(this.restaurantRepository, FirebaseAuth _firebaseAuth)
      : super(RestaurantCreationState.initial(_firebaseAuth.currentUser!.uid));

  final IRestaurantRepository restaurantRepository;

  @override
  Stream<RestaurantCreationState> mapEventToState(
    RestaurantCreationEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(
          restaurantName: RestaurantName(e.nameStr),
          restaurantFailureOrSuccessOption: none(),
        );
      },
      createRestaurantPressed: (e) async* {
        Either<RestaurantFailure, Unit>? failureOrSuccess;

        if (state.restaurantName.isValid()) {
          yield state.copyWith(
            isSubmitting: true,
            restaurantFailureOrSuccessOption: none(),
          );

          failureOrSuccess =
              await restaurantRepository.create(Restaurant.empty().copyWith(
            name: state.restaurantName,
            owner: state.owner,
          ));
        }

        yield state.copyWith(
          isSubmitting: false,
          restaurantFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
