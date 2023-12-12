part of 'movie_now_playing_cubit.dart';

@freezed
class MovieNowPlayingState with _$MovieNowPlayingState {
  factory MovieNowPlayingState.initial() = InitialMovieNowPlayingState;

  factory MovieNowPlayingState.loading() = LoadingMovieNowPlayingState;

  factory MovieNowPlayingState.success(
    List<ShowDetail> movies,
  ) = SuccessMovieNowPlayingState;

  factory MovieNowPlayingState.empty() = EmptyMovieNowPlayingState;

  factory MovieNowPlayingState.failure(
    String message,
  ) = FailureMovieNowPlayingState;
}
