import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    // ignore: avoid_print
    if (kDebugMode) print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // ignore: avoid_print
    if (kDebugMode) print(transition);
    super.onTransition(bloc, transition);
  }
}
