part of 'movie_detail_cubit.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState.initial() = InitialMovieDetailState;

  factory MovieDetailState.loading() = LoadingMovieDetailState;

  factory MovieDetailState.success(
    Movie movie,
    List<Review> reviews,
  ) = SuccessMovieDetailState;

  factory MovieDetailState.empty() = EmptyMovieDetailState;

  factory MovieDetailState.failure(String message) = FailureMovieDetailState;
}
