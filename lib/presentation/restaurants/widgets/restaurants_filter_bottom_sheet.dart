import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_bloc.dart';
import 'package:rankstaurant/application/restaurants/restaurants_filter/restaurants_filter_bloc.dart';
import 'package:rankstaurant/global/settings/settings_helper.dart';
import 'package:rankstaurant/global/widgets/r_bottom_sheet.dart';

class RestaurantsFilterBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantsBloc, RestaurantsState>(
      builder: (context, state) {
        return BlocBuilder<RestaurantsFilterBloc, RestaurantsFilterState>(
          builder: (context, state) {
            return RBottomSheet(
              title: 'Filter Restaurants',
              context: context,
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    buildRadioListTile(
                      context: context,
                      title: 'No Filter',
                      value: null,
                      groupValue: state.ratingFilter,
                    ),
                    buildRadioListTile(
                      context: context,
                      title: 'New',
                      value: -1,
                      groupValue: state.ratingFilter,
                    ),
                    buildRadioListTile(
                      context: context,
                      title: '⭐',
                      value: 1,
                      groupValue: state.ratingFilter,
                    ),
                    buildRadioListTile(
                      context: context,
                      title: '⭐⭐',
                      value: 2,
                      groupValue: state.ratingFilter,
                    ),
                    buildRadioListTile(
                      context: context,
                      title: '⭐⭐⭐',
                      value: 3,
                      groupValue: state.ratingFilter,
                    ),
                    buildRadioListTile(
                      context: context,
                      title: '⭐⭐⭐⭐',
                      value: 4,
                      groupValue: state.ratingFilter,
                    ),
                    buildRadioListTile(
                      context: context,
                      title: '⭐⭐⭐⭐⭐',
                      value: 5,
                      groupValue: state.ratingFilter,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  RadioListTile<int?> buildRadioListTile({
    required BuildContext context,
    required String title,
    required int? value,
    required int? groupValue,
  }) {
    final titleWidget = Text(title);
    return RadioListTile<int?>(
      title: titleWidget,
      activeColor: Theme.of(context).accentColor,
      value: value,
      groupValue: groupValue,
      onChanged: (int? newValue) => _onFilterChanged(context, newValue),
    );
  }

  void _onFilterChanged(BuildContext context, int? newValue) {
    context.read<RestaurantsBloc>().add(_watchEvent(ratingFilter: newValue));
    context
        .read<RestaurantsFilterBloc>()
        .add(RestaurantsFilterEvent.filterChanged(ratingFilter: newValue));
    Navigator.pop(context);
  }

  RestaurantsEvent _watchEvent({required int? ratingFilter}) {
    switch (SettingsHelper.userRole()) {
      case Role.owner:
        return RestaurantsEvent.watchOwn(ratingFilter: ratingFilter);
      case Role.admin:
      case Role.regular:
      default:
        return RestaurantsEvent.watchAll(ratingFilter: ratingFilter);
    }
  }
}
