import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:injectable/injectable.dart';
import 'package:rankstaurant/presentation/core/app.dart';
import 'package:rankstaurant/simple_bloc_observer.dart';

import 'injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

  await startFirebaseServices();
  await startSettingsServices();

  Bloc.observer = SimpleBlocObserver();

  runApp(App());
}

Future<void> startFirebaseServices() async {
  await Firebase.initializeApp();
  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
  }
}

Future<void> startSettingsServices() async {
  await Hive.initFlutter();
  await Hive.openBox('settings');
}
