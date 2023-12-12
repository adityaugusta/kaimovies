part of 'movie_popular_cubit.dart';

@freezed
class MoviePopularState with _$MoviePopularState {
  factory MoviePopularState.initial() = InitialMoviePopularState;

  factory MoviePopularState.loading() = LoadingMoviePopularState;

  factory MoviePopularState.success(
    List<ShowDetail> movies,
  ) = SuccessMoviePopularState;

  factory MoviePopularState.empty() = EmptyMoviePopularState;

  factory MoviePopularState.failure(String message) = FailureMoviePopularState;
}
