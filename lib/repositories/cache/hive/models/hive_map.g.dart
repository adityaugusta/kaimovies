// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HiveMapImpl _$$HiveMapImplFromJson(Map json) => $checkedCreate(
      r'_$HiveMapImpl',
      json,
      ($checkedConvert) {
        final val = _$HiveMapImpl(
          data: $checkedConvert(
              'data', (v) => Map<String, dynamic>.from(v as Map)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$HiveMapImplToJson(_$HiveMapImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
