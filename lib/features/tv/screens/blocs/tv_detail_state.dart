part of 'tv_detail_cubit.dart';

@freezed
class TvDetailState with _$TvDetailState {
  factory TvDetailState.initial() = InitialTvDetailState;

  factory TvDetailState.loading() = LoadingTvDetailState;

  factory TvDetailState.success(
    Tv tv,
    List<Review> reviews,
  ) = SuccessTvDetailState;

  factory TvDetailState.empty() = EmptyTvDetailState;

  factory TvDetailState.failure(String message) = FailureTvDetailState;
}
