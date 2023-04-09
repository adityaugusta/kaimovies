import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/model/tv.dart';

part 'tv_popular_state.freezed.dart';

@freezed
class TvPopularState with _$TvPopularState {
  factory TvPopularState.loading() = LoadingTvPopularState;

  factory TvPopularState.success(List<Tv> tvs) = SuccessTvPopularState;

  factory TvPopularState.empty() = EmptyTvPopularState;

  factory TvPopularState.error() = ErrorTvPopularState;
}
