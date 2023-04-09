import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/injector.dart';
import 'package:kaimovies/repositories/movie_repository.dart';
import 'movie_now_playing_state.dart';

export 'movie_now_playing_state.dart';

class MovieNowPlayingCubit extends Cubit<MovieNowPlayingState> {
  MovieNowPlayingCubit(this._movieRepository) : super(LoadingMovieNowPlayingState());

  static MovieNowPlayingCubit create(BuildContext context) =>
      MovieNowPlayingCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch() async {
    try {
      final res = await _movieRepository.fetchNowPlaying();
      if (res != null && res.isNotEmpty) {
        emit(MovieNowPlayingState.success(res));
      } else {
        emit(MovieNowPlayingState.empty());
      }
    } catch (error) {
      emit(MovieNowPlayingState.error());
    }
  }
}
