// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CacheControlImpl _$$CacheControlImplFromJson(Map<String, dynamic> json) =>
    _$CacheControlImpl(
      label: json['label'] as String,
      lastRequest: DateTime.parse(json['last_request'] as String),
    );

Map<String, dynamic> _$$CacheControlImplToJson(_$CacheControlImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'last_request': instance.lastRequest.toIso8601String(),
    };
