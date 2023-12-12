import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'movie_now_playing_cubit.freezed.dart';
part 'movie_now_playing_state.dart';

class MovieNowPlayingCubit extends Cubit<MovieNowPlayingState> {
  MovieNowPlayingCubit(this._movieRepository)
      : super(InitialMovieNowPlayingState());

  static MovieNowPlayingCubit create(BuildContext context) =>
      MovieNowPlayingCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch({isRefresh = false}) async {
    try {
      emit(LoadingMovieNowPlayingState());
      final response =
          await _movieRepository.fetchNowPlaying(isRefresh: isRefresh);
      if (response != null && response.isNotEmpty) {
        emit(SuccessMovieNowPlayingState(response
            .map((movie) => ShowDetail(
                id: movie.id,
                title: movie.title,
                tagline: movie.tagline,
                overview: movie.overview,
                posterUrl: movie.posterPath,
                releaseDate: movie.releaseDate,
                genres: movie.genres ?? [],
                reviews: []))
            .toList()));
      } else {
        emit(EmptyMovieNowPlayingState());
      }
    } catch (error) {
      emit(FailureMovieNowPlayingState(error.toString()));
    }
  }
}
