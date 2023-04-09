import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_upcoming_state.dart';
import 'package:kaimovies/main.dart';
import 'package:kaimovies/repositories/movie_repository.dart';
import 'movie_upcoming_state.dart';

export 'movie_upcoming_state.dart';

class MovieUpcomingCubit extends Cubit<MovieUpcomingState> {
  MovieUpcomingCubit(this._movieRepository) : super(LoadingMovieUpcomingState());

  static MovieUpcomingCubit create(BuildContext context) =>
      MovieUpcomingCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch() async {
    try {
      final res = await _movieRepository.fetchUpcoming();
      if (res != null && res.isNotEmpty) {
        emit(MovieUpcomingState.success(res));
      } else {
        emit(MovieUpcomingState.empty());
      }
    } catch (error) {
      emit(MovieUpcomingState.error());
    }
  }
}
