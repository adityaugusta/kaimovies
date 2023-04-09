import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/injector.dart';
import 'package:kaimovies/repositories/movie_repository.dart';
import 'movie_detail_state.dart';

export 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit(this._movieRepository) : super(LoadingMovieDetailState());

  static MovieDetailCubit create(BuildContext context) =>
      MovieDetailCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch(String id) async {
    try {
      final detail = await _movieRepository.getMovieDetail(id);
      final reviews = await _movieRepository.getMovieReviews(id);
      if (detail != null) {
        emit(MovieDetailState.success(detail, reviews ?? []));
      } else {
        emit(MovieDetailState.empty());
      }
    } catch (error) {
      emit(MovieDetailState.error());
    }
  }
}
