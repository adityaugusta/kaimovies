import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'movie_detail_cubit.freezed.dart';
part 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit(this._movieRepository) : super(InitialMovieDetailState());

  static MovieDetailCubit create(BuildContext context) =>
      MovieDetailCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch(int movieId) async {
    try {
      emit(LoadingMovieDetailState());
      final movie = await _movieRepository.getMovieDetail(movieId);
      final reviews = await _movieRepository.getMovieReviews(movieId);
      if (movie != null) {
        emit(SuccessMovieDetailState(ShowDetail(
          id: movie.id,
          title: movie.title,
          tagline: movie.tagline,
          overview: movie.overview,
          posterUrl: movie.posterPath,
          releaseDate: movie.releaseDate,
          adult: movie.adult,
          backdropUrl: movie.backdropPath,
          popularity: movie.popularity,
          voteAverage: movie.voteAverage,
          voteCount: movie.voteCount,
          genres: movie.genres ?? [],
          reviews: reviews ?? [],
        )));
      } else {
        emit(EmptyMovieDetailState());
      }
    } catch (error) {
      emit(FailureMovieDetailState(error.toString()));
    }
  }
}
