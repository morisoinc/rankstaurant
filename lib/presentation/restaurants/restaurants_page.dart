import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_bloc.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/presentation/restaurants/widgets/restaurants_list.dart';

class RestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RestaurantsBloc>(
          create: (context) =>
              getIt<RestaurantsBloc>()..add(const RestaurantsEvent.watchAll()),
        )
      ],
      child: Scaffold(
        body: RestaurantsList(),
      ),
    );
  }
}
