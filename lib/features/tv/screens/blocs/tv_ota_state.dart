part of 'tv_ota_cubit.dart';

@freezed
class TvOnTheAirState with _$TvOnTheAirState {
  factory TvOnTheAirState.initial() = InitialTvOnTheAirState;

  factory TvOnTheAirState.loading() = LoadingTvOnTheAirState;

  factory TvOnTheAirState.success(List<Tv> tvs) = SuccessTvOnTheAirState;

  factory TvOnTheAirState.empty() = EmptyTvOnTheAirState;

  factory TvOnTheAirState.failure(String message) = FailureTvOnTheAirState;
}
