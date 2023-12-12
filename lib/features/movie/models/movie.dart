import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/models/genre.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    String? posterPath,
    String? backdropPath,
    required String title,
    String? tagline,
    required String overview,
    @Default(false) bool adult,
    required String releaseDate,
    @Default(0) double popularity,
    @Default(0) double voteAverage,
    @Default(0) int voteCount,
    List<Genre>? genres,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  static const Movie empty = Movie(
    id: -1,
    title: '',
    overview: '',
    releaseDate: '',
  );

  static const fromJsonFactory = _$MovieFromJson;
}
