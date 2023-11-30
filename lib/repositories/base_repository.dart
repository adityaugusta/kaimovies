import 'dart:async' show Future, TimeoutException;
import 'dart:io' show SocketException;

import 'package:kaimovies/repositories/cache/cache_control.dart';
import 'package:kaimovies/repositories/cache/hive/cache_control_box.dart';

class BaseRepository {
  BaseRepository({
    required String label,
    required CacheControlBox cacheControlBox,
    Duration maxAge = const Duration(minutes: 5),
  })  : _label = label,
        _maxAge = maxAge,
        _cacheControlBox = cacheControlBox;

  final String _label;
  final Duration _maxAge;
  final CacheControlBox _cacheControlBox;

  Future<T> withCache<T>({
    String? id,
    required Future<T> Function() request,
    required Future<void> Function(T response) write,
    required Future<T?> Function() read,
    bool isRefresh = false,
    bool isIgnoreCache = false,
  }) async {
    try {
      final label = _createLabel(id);
      final lastRequest =
          (await _cacheControlBox.get(label))?.lastRequest ?? DateTime(0);
      if ((isRefresh || DateTime.now().isAfter(lastRequest.add(_maxAge))) ||
          isIgnoreCache) {
        final response = await request();
        await write(response);
        await _cacheControlBox.insert(CacheControl(
          label: label,
          lastRequest: DateTime.now(),
        ));
        return response;
      } else {
        final result = await read();
        if (result == null) {
          final response = await request();
          await write(response);
          await _cacheControlBox.insert(CacheControl(
            label: label,
            lastRequest: DateTime.now(),
          ));
          return response;
        }
        return result;
      }
    } catch (e) {
      if (e is SocketException || e is TimeoutException) {
        final result = await read();
        if (result != null) return result;
        rethrow;
      }
      rethrow;
    }
  }

  String _createLabel(String? id) {
    if (id != null) {
      return '$_label-$id';
    }
    return _label;
  }
}
