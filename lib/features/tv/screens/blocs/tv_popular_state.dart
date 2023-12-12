part of 'tv_popular_cubit.dart';

@freezed
class TvPopularState with _$TvPopularState {
  factory TvPopularState.initial() = InitialTvPopularState;

  factory TvPopularState.loading() = LoadingTvPopularState;

  factory TvPopularState.success(List<ShowDetail> tvs) = SuccessTvPopularState;

  factory TvPopularState.empty() = EmptyTvPopularState;

  factory TvPopularState.failure(String message) = FailureTvPopularState;
}
