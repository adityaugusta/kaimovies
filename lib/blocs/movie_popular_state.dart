import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/model/movie.dart';

part 'movie_popular_state.freezed.dart';

@freezed
class MoviePopularState with _$MoviePopularState {
  factory MoviePopularState.loading() = LoadingMoviePopularState;

  factory MoviePopularState.success(List<Movie> movies) =
      SuccessMoviePopularState;

  factory MoviePopularState.empty() = EmptyMoviePopularState;

  factory MoviePopularState.error() = ErrorMoviePopularState;
}
