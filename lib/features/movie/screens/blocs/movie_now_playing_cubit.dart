import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'movie_now_playing_cubit.freezed.dart';
part 'movie_now_playing_state.dart';

class MovieNowPlayingCubit extends Cubit<MovieNowPlayingState> {
  MovieNowPlayingCubit(this._movieRepository)
      : super(InitialMovieNowPlayingState());

  static MovieNowPlayingCubit create(BuildContext context) =>
      MovieNowPlayingCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch() async {
    try {
      emit(LoadingMovieNowPlayingState());
      final res = await _movieRepository.fetchNowPlaying();
      if (res != null && res.isNotEmpty) {
        emit(SuccessMovieNowPlayingState(res));
      } else {
        emit(EmptyMovieNowPlayingState());
      }
    } catch (error) {
      emit(FailureMovieNowPlayingState(error.toString()));
    }
  }
}
