import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/model/movie.dart';
import 'package:kaimovies/model/review.dart';

part 'movie_detail_state.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  factory MovieDetailState.loading() = LoadingMovieDetailState;

  factory MovieDetailState.success(Movie movie, List<Review> reviews) = SuccessMovieDetailState;

  factory MovieDetailState.empty() = EmptyMovieDetailState;

  factory MovieDetailState.error() = ErrorMovieDetailState;
}
