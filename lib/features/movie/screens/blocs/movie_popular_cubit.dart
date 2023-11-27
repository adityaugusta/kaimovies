import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'movie_popular_cubit.freezed.dart';
part 'movie_popular_state.dart';

class MoviePopularCubit extends Cubit<MoviePopularState> {
  MoviePopularCubit(this._movieRepository) : super(InitialMoviePopularState());

  static MoviePopularCubit create(BuildContext context) =>
      MoviePopularCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch() async {
    try {
      emit(LoadingMoviePopularState());
      final res = await _movieRepository.fetchPopular();
      if (res != null && res.isNotEmpty) {
        emit(SuccessMoviePopularState(res));
      } else {
        emit(EmptyMoviePopularState());
      }
    } catch (error) {
      emit(FailureMoviePopularState(error.toString()));
    }
  }
}
