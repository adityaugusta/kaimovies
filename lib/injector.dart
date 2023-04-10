import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:kaimovies/model/movie.dart';
import 'package:kaimovies/model/review.dart';
import 'package:kaimovies/model/tv.dart';
import 'package:kaimovies/repositories/movie_repository.dart';
import 'package:kaimovies/repositories/network/converter/json_converter.dart';
import 'package:kaimovies/repositories/network/movie_service.dart';
import 'package:kaimovies/repositories/network/response/movie_response.dart';
import 'package:kaimovies/repositories/network/response/review_response.dart';
import 'package:kaimovies/repositories/network/response/tv_response.dart';
import 'package:kaimovies/repositories/network/service_manager.dart';
import 'package:kaimovies/repositories/network/tv_service.dart';
import 'package:kaimovies/repositories/tv_repository.dart';

const namedService = 'service';

final injector = GetIt.instance;

extension GetItExtension on GetIt {
  void registerService<T extends ChopperService>(FactoryFunc<T> create,
      {String? instanceName}) {
    final T service = create();
    injector.get<List<ChopperService>>(instanceName: namedService).add(service);
    registerSingleton<T>(service);
  }
}

Future<void> injectServices() async {
  /// inject services
  injector.registerSingleton<List<ChopperService>>(<ChopperService>[],
      instanceName: namedService);
  injector.registerService(MovieService.create);
  injector.registerService(TvService.create);

  /// inject factories
  injector.registerSingleton<Map<Type, JsonFactory>>(<Type, JsonFactory>{});
  injector.get<Map<Type, JsonFactory>>().addAll({
    MovieResponse: MovieResponse.fromJsonFactory,
    TvResponse: TvResponse.fromJsonFactory,
    ReviewResponse: ReviewResponse.fromJsonFactory,
    Movie: Movie.fromJsonFactory,
    Tv: Tv.fromJsonFactory,
    Review: Review.fromJsonFactory,
  });
  injector.registerLazySingleton<JsonModelConverter>(
      () => JsonModelConverter(injector.get()));

  injector.registerLazySingleton<ServiceManager>(() => ServiceManager.create(
      'https://api.themoviedb.org/3',
      injector.get(),
      injector.get(instanceName: namedService)));
  injector.get<ServiceManager>();

  /// inject repositories
  injector.registerLazySingleton<MovieRepository>(
      () => MovieRepository(injector.get()));
  injector
      .registerLazySingleton<TvRepository>(() => TvRepository(injector.get()));
}
