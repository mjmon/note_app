import 'dart:async';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:noteapp/app.dart';
import 'package:noteapp/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.prod);
  runZonedGuarded<Future<void>>(() async {
    runApp(const App());
  }, (exception, stackTrace) async {
    // handle exceptions here to 3rd party (sentry, crashlytics)
    // recordError(exception, stackTrace);
  });
}
