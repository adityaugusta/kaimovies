import 'package:flutter_cache_manager/flutter_cache_manager.dart'
    show CacheManager, Config;
import 'package:kaimovies/repositories/cache/file_system.dart';

class ImageUrlCacheManager extends CacheManager {
  ImageUrlCacheManager._()
      : super(Config(
          key,
          stalePeriod: const Duration(days: 7),
          maxNrOfCacheObjects: 4100,
          fileSystem: IOFileSystem(key),
        ));

  static ImageUrlCacheManager create() => ImageUrlCacheManager._();

  static const key = 'imageUrlCache';
}
