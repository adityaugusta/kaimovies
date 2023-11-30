import 'package:freezed_annotation/freezed_annotation.dart';

part 'cache_control.freezed.dart';

part 'cache_control.g.dart';

@freezed
class CacheControl with _$CacheControl {
  const factory CacheControl({
    required String label,
    required DateTime lastRequest,
  }) = _CacheControl;

  factory CacheControl.fromJson(Map<String, dynamic> json) =>
      _$CacheControlFromJson(json);

  static const fromJsonFactory = _$CacheControlFromJson;
}
