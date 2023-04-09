import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/main.dart';
import 'package:kaimovies/repositories/movie_repository.dart';
import 'movie_popular_state.dart';

export 'movie_popular_state.dart';

class MoviePopularCubit extends Cubit<MoviePopularState> {
  MoviePopularCubit(this._movieRepository) : super(LoadingMoviePopularState());

  static MoviePopularCubit create(BuildContext context) =>
      MoviePopularCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch() async {
    try {
      final res = await _movieRepository.fetchPopular();
      if (res != null && res.isNotEmpty) {
        emit(MoviePopularState.success(res));
      } else {
        emit(MoviePopularState.empty());
      }
    } catch (error) {
      emit(MoviePopularState.error());
    }
  }
}
