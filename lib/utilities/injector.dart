import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/models/movie_response.dart';
import 'package:kaimovies/features/movie/repositories/cache/hive/movie_box.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/features/movie/repositories/network/movie_service.dart';
import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/features/review/models/review_response.dart';
import 'package:kaimovies/features/review/repositories/cache/hive/review_box.dart';
import 'package:kaimovies/features/tv/models/tv.dart';
import 'package:kaimovies/features/tv/models/tv_response.dart';
import 'package:kaimovies/features/tv/repositories/network/tv_service.dart';
import 'package:kaimovies/features/tv/repositories/tv_repository.dart';
import 'package:kaimovies/repositories/cache/cache_manager.dart';
import 'package:kaimovies/repositories/cache/hive/cache_control_box.dart';
import 'package:kaimovies/repositories/cache/hive/main_hive.dart';
import 'package:kaimovies/repositories/cache/hive/utilities/cache_closeable.dart';
import 'package:kaimovies/repositories/cache/image_cache_manager.dart';
import 'package:kaimovies/repositories/network/service_manager.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart'
    as api_utils;
import 'package:kaimovies/repositories/network/utilities/json_converter.dart';

const namedService = 'service';

final injector = GetIt.instance;

extension GetItExtension on GetIt {
  void registerService<T extends ChopperService>(FactoryFunc<T> create,
      {String? instanceName}) {
    final T service = create();
    injector.get<List<ChopperService>>(instanceName: namedService).add(service);
    registerSingleton<T>(service);
  }

  void registerCache<T extends CacheClosable>(
    FactoryFunc<T> create, {
    String? instanceName,
  }) {
    registerLazySingleton(() {
      final cache = create();
      injector.get<CacheManager>().addCache(cache);
      return cache;
    });
  }
}

Future<void> injectServices() async {
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
  injector.registerLazySingleton<JsonModelConverter>(() => JsonModelConverter(
        injector.get(),
      ));

  injector.registerLazySingleton<ImageUrlCacheManager>(
      () => ImageUrlCacheManager.create());

  /// inject services
  injector.registerSingleton<List<ChopperService>>(<ChopperService>[],
      instanceName: namedService);
  injector.registerService(MovieService.create);
  injector.registerService(TvService.create);
  injector.registerLazySingleton<ServiceManager>(() => ServiceManager.create(
        api_utils.baseUrl,
        injector.get(),
        injector.get(instanceName: namedService),
      ));
  injector.get<ServiceManager>();

  /// inject caches
  final mainHive = await MainHive.create();
  injector.registerLazySingleton<CacheManager>(CacheManager.create);
  injector.registerCache<MainHive>(() => mainHive);
  injector.registerFactory<CacheControlBox>(
      () => injector.get<MainHive>().cacheControlBox);
  injector.registerFactory<MovieBox>(() => injector.get<MainHive>().movieBox);
  injector.registerFactory<ReviewBox>(() => injector.get<MainHive>().reviewBox);

  /// inject repositories
  injector.registerLazySingleton<MovieRepository>(() => MovieRepository(
        injector.get(),
        injector.get(),
        injector.get(),
        cacheControlBox: injector.get(),
      ));
  injector.registerLazySingleton<TvRepository>(() => TvRepository(
        injector.get(),
      ));
}
