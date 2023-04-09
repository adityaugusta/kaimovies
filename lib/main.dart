import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:kaimovies/app.dart';
import 'package:kaimovies/model/movie.dart';
import 'package:kaimovies/model/review.dart';
import 'package:kaimovies/repositories/movie_repository.dart';
import 'package:kaimovies/repositories/network/converter/json_converter.dart';
import 'package:kaimovies/repositories/network/movie_service.dart';
import 'package:kaimovies/repositories/network/response/movie_response.dart';
import 'package:kaimovies/repositories/network/response/review_response.dart';
import 'package:kaimovies/repositories/network/service_manager.dart';
import 'package:kaimovies/repositories/network/tv_service.dart';
import 'package:kaimovies/repositories/tv_repository.dart';

const poster = 'https://image.tmdb.org/t/p/original';
const post = 'https://image.tmdb.org/t/p/w500';
const namedService = 'service';

final injector = GetIt.instance;

const backgroundColor = Color(0xFF1b1c26);

extension GetItExtension on GetIt {
  void registerService<T extends ChopperService>(FactoryFunc<T> create,
      {String? instanceName}) {
    final T service = create();
    injector.get<List<ChopperService>>(instanceName: namedService).add(service);
    registerSingleton<T>(service);
  }
}

Future<void> initUi() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: backgroundColor,
    systemNavigationBarColor: backgroundColor,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

Future<void> initServices() async {
  injector.registerSingleton<List<ChopperService>>(<ChopperService>[],
      instanceName: namedService);
  injector.registerService(MovieService.create);
  injector.registerService(TvService.create);

  injector.registerSingleton<Map<Type, JsonFactory>>(<Type, JsonFactory>{});
  injector.get<Map<Type, JsonFactory>>().addAll({
    MovieResponse: MovieResponse.fromJsonFactory,
    ReviewResponse: ReviewResponse.fromJsonFactory,
    Movie: Movie.fromJsonFactory,
    Review: Review.fromJsonFactory,
  });
  injector.registerLazySingleton<JsonModelConverter>(
          () => JsonModelConverter(injector.get()));

  injector.registerLazySingleton<ServiceManager>(() => ServiceManager.create(
      'https://api.themoviedb.org/3',
      injector.get(),
      injector.get(instanceName: namedService)));
  injector.get<ServiceManager>();
}

Future<void> initRepositories() async {
  injector.registerLazySingleton<MovieRepository>(
          () => MovieRepository(injector.get()));
  injector.registerLazySingleton<TvRepository>(
          () => TvRepository(injector.get()));
}

Future<void> main() async {
  await initUi();
  await initServices();
  await initRepositories();

  runApp(const App());
}
