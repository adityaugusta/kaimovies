import 'package:kaimovies/repositories/cache/cache_control.dart';
import 'package:kaimovies/repositories/cache/hive/models/hive_map.dart';
import 'package:kaimovies/repositories/cache/hive/utilities/hive_box.dart';

const _boxName = 'cacheControl';

class CacheControlBox extends HiveBox {
  CacheControlBox({super.name = 'cacheControlBox', super.path});

  Future<void> insert(CacheControl cacheControl) async {
    final box = await openBox();
    return box.put(cacheControl.label, HiveMap.convert(cacheControl.toJson()));
  }

  Future<CacheControl?> get(String id) async {
    final box = await openBox();
    final record = box.get(id)?.data;
    if (record != null) {
      return CacheControl.fromJson(record);
    }
    return null;
  }
}
