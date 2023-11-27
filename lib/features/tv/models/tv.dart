import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv.freezed.dart';
part 'tv.g.dart';

@freezed
class Tv with _$Tv {
  const factory Tv({
    required int id,
    String? posterPath,
    String? backdropPath,
    required String name,
    required String overview,
    required String firstAirDate,
    @Default(0) double popularity,
    @Default(0) double voteAverage,
  }) = _Tv;

  factory Tv.fromJson(Map<String, dynamic> json) => _$TvFromJson(json);

  static const fromJsonFactory = _$TvFromJson;
}
