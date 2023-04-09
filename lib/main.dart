import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaimovies/app.dart';
import 'package:kaimovies/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await injectServices();

  runApp(const App());
}
