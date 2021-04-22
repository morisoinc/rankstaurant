import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'restaurants_filter_event.dart';
part 'restaurants_filter_state.dart';
part 'restaurants_filter_bloc.freezed.dart';

@injectable
class RestaurantsFilterBloc
    extends Bloc<RestaurantsFilterEvent, RestaurantsFilterState> {
  RestaurantsFilterBloc() : super(RestaurantsFilterState.initial());

  @override
  Stream<RestaurantsFilterState> mapEventToState(
    RestaurantsFilterEvent event,
  ) async* {
    yield* event.map(filterChanged: (e) async* {
      yield state.copyWith(ratingFilter: e.ratingFilter);
    });
  }
}
