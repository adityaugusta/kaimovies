// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tv _$$_TvFromJson(Map<String, dynamic> json) => _$_Tv(
      id: json['id'] as int,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      name: json['name'] as String,
      overview: json['overview'] as String,
      firstAirDate: json['first_air_date'] as String,
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_TvToJson(_$_Tv instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('poster_path', instance.posterPath);
  writeNotNull('backdrop_path', instance.backdropPath);
  val['name'] = instance.name;
  val['overview'] = instance.overview;
  val['first_air_date'] = instance.firstAirDate;
  val['popularity'] = instance.popularity;
  val['vote_average'] = instance.voteAverage;
  return val;
}
