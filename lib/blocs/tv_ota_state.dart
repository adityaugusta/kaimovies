import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/model/tv.dart';

part 'tv_ota_state.freezed.dart';

@freezed
class TvOnTheAirState with _$TvOnTheAirState {
  factory TvOnTheAirState.loading() = LoadingTvOnTheAirState;

  factory TvOnTheAirState.success(List<Tv> tvs) = SuccessTvOnTheAirState;

  factory TvOnTheAirState.empty() = EmptyTvOnTheAirState;

  factory TvOnTheAirState.error() = ErrorTvOnTheAirState;
}
