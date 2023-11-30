import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'movie_upcoming_cubit.freezed.dart';
part 'movie_upcoming_state.dart';

class MovieUpcomingCubit extends Cubit<MovieUpcomingState> {
  MovieUpcomingCubit(this._movieRepository)
      : super(InitialMovieUpcomingState());

  static MovieUpcomingCubit create(BuildContext context) =>
      MovieUpcomingCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch({isRefresh = false}) async {
    try {
      emit(LoadingMovieUpcomingState());
      final res = await _movieRepository.fetchUpcoming(isRefresh: isRefresh);
      if (res != null && res.isNotEmpty) {
        emit(SuccessMovieUpcomingState(res));
      } else {
        emit(EmptyMovieUpcomingState());
      }
    } catch (error) {
      emit(FailureMovieUpcomingState(error.toString()));
    }
  }
}
