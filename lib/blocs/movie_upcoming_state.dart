import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/model/movie.dart';

part 'movie_upcoming_state.freezed.dart';

@freezed
class MovieUpcomingState with _$MovieUpcomingState {
  factory MovieUpcomingState.loading() = LoadingMovieUpcomingState;

  factory MovieUpcomingState.success(List<Movie> movies) = SuccessMovieUpcomingState;

  factory MovieUpcomingState.empty() = EmptyMovieUpcomingState;

  factory MovieUpcomingState.error() = ErrorMovieUpcomingState;
}
