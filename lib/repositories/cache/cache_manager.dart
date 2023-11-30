import 'package:kaimovies/repositories/cache/hive/utilities/cache_closeable.dart';

class CacheManager {
  CacheManager._();

  static CacheManager create() => CacheManager._();

  final List<CacheClosable> _cacheClosable = [];

  void addCache(CacheClosable cacheClosable) {
    if (!_cacheClosable.contains(cacheClosable)) {
      _cacheClosable.add(cacheClosable);
    }
  }

  Future<void> close() async {
    return await Future.forEach(_cacheClosable,
        (CacheClosable cacheClosable) async => await cacheClosable.close());
  }
}
