// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as int,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String,
      overview: json['overview'] as String,
      adult: json['adult'] as bool,
      releaseDate: json['release_date'] as String,
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) {
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
  val['title'] = instance.title;
  val['overview'] = instance.overview;
  val['adult'] = instance.adult;
  val['release_date'] = instance.releaseDate;
  val['popularity'] = instance.popularity;
  val['vote_average'] = instance.voteAverage;
  return val;
}
