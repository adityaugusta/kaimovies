import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/models/show_detail.dart';
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
      final response =
          await _movieRepository.fetchUpcoming(isRefresh: isRefresh);
      if (response != null && response.isNotEmpty) {
        emit(SuccessMovieUpcomingState(response
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
        emit(EmptyMovieUpcomingState());
      }
    } catch (error) {
      emit(FailureMovieUpcomingState(error.toString()));
    }
  }
}
