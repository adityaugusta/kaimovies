// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvResponse _$TvResponseFromJson(Map<String, dynamic> json) => TvResponse(
      json['page'] as int,
      (json['results'] as List<dynamic>)
          .map((e) => Tv.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TvResponseToJson(TvResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.tvs.map((e) => e.toJson()).toList(),
    };
