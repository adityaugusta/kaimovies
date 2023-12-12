part of 'movie_detail_cubit.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState.initial() = InitialMovieDetailState;

  factory MovieDetailState.loading() = LoadingMovieDetailState;

  factory MovieDetailState.success(ShowDetail movie) = SuccessMovieDetailState;

  factory MovieDetailState.empty() = EmptyMovieDetailState;

  factory MovieDetailState.failure(String message) = FailureMovieDetailState;
}
