// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      id: json['id'] as int,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String,
      tagline: json['tagline'] as String?,
      overview: json['overview'] as String,
      adult: json['adult'] as bool? ?? false,
      releaseDate: json['release_date'] as String,
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) {
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
  writeNotNull('tagline', instance.tagline);
  val['overview'] = instance.overview;
  val['adult'] = instance.adult;
  val['release_date'] = instance.releaseDate;
  val['popularity'] = instance.popularity;
  val['vote_average'] = instance.voteAverage;
  return val;
}
