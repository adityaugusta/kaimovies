import 'dart:async' show Completer, Future;

import 'package:flutter/material.dart' show WidgetsFlutterBinding;
import 'package:hive_flutter/adapters.dart' show Hive;
import 'package:kaimovies/features/movie/repositories/cache/hive/movie_box.dart';
import 'package:kaimovies/features/review/repositories/cache/hive/review_box.dart';
import 'package:kaimovies/repositories/cache/hive/cache_control_box.dart';
import 'package:kaimovies/repositories/cache/hive/models/hive_map.dart';
import 'package:kaimovies/repositories/cache/hive/utilities/cache_closeable.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;

class MainHive extends CacheClosable {
  MainHive() {
    Hive.registerAdapter(HiveMapAdapter());
    _init().then((value) => _initialiseCompleter.complete());
  }

  static Future<MainHive> create() async {
    final hive = MainHive();
    await hive._initialiseCompleter.future;
    return hive;
  }

  final _initialiseCompleter = Completer<void>();

  late final CacheControlBox cacheControlBox;
  late final MovieBox movieBox;
  late final ReviewBox reviewBox;

  Future<void> _init() async {
    WidgetsFlutterBinding.ensureInitialized();

    final appDir = await getApplicationDocumentsDirectory();
    final path = join(appDir.path, 'main');

    cacheControlBox = CacheControlBox(path: path);
    movieBox = MovieBox(path: path);
    reviewBox = ReviewBox(path: path);

    return Future.value();
  }

  @override
  Future<void> close() => Hive.deleteFromDisk();
}
