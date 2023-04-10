import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/model/movie.dart';

part 'movie_now_playing_state.freezed.dart';

@freezed
class MovieNowPlayingState with _$MovieNowPlayingState {
  factory MovieNowPlayingState.loading() = LoadingMovieNowPlayingState;

  factory MovieNowPlayingState.success(List<Movie> movies) =
      SuccessMovieNowPlayingState;

  factory MovieNowPlayingState.empty() = EmptyMovieNowPlayingState;

  factory MovieNowPlayingState.error() = ErrorMovieNowPlayingState;
}
