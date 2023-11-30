import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'hive_map.freezed.dart';

part 'hive_map.g.dart';

@freezed
class HiveMap with _$HiveMap {
  @JsonSerializable(anyMap: true, checked: true)
  factory HiveMap({required Map<String, dynamic> data}) = _HiveMap;

  factory HiveMap.convert(Map<String, dynamic> json) =>
      HiveMap.fromJson({'data': json});

  factory HiveMap.fromJson(Map<String, dynamic> json) =>
      _$HiveMapFromJson(json);

  static const fromJsonFactory = _$HiveMapFromJson;
}

class HiveMapAdapter extends TypeAdapter<HiveMap> {
  @override
  HiveMap read(BinaryReader reader) {
    final result = Map<String, dynamic>.from(reader.read());
    return HiveMap.fromJson({'data': result});
  }

  @override
  void write(BinaryWriter writer, HiveMap obj) {
    writer.write<Map<String, dynamic>>(obj.data);
  }

  @override
  final typeId = 0;
}
