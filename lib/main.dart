import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaimovies/core/app.dart';
import 'package:kaimovies/utilities/injector.dart';
import 'package:stetho_network_inspector/stetho_network_inspector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Stetho.initialize();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await injectServices();

  runApp(const App());
}
