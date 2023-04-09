import 'package:json_annotation/json_annotation.dart';
import 'package:kaimovies/model/tv.dart';

part 'tv_response.g.dart';

@JsonSerializable(explicitToJson: true)
class TvResponse {
  TvResponse(this.page, this.tvs);

  static const fromJsonFactory = _$TvResponseFromJson;

  final int page;
  @JsonKey(name: 'results')
  final List<Tv> tvs;
}
