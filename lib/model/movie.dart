import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    String? posterPath,
    String? backdropPath,
    required String title,
    required String overview,
    required bool adult,
    required String releaseDate,
    @Default(0) double popularity,
    @Default(0) double voteAverage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  static const fromJsonFactory = _$MovieFromJson;
}
