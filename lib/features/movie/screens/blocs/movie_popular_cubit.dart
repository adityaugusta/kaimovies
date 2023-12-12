import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'movie_popular_cubit.freezed.dart';
part 'movie_popular_state.dart';

class MoviePopularCubit extends Cubit<MoviePopularState> {
  MoviePopularCubit(this._movieRepository) : super(InitialMoviePopularState());

  static MoviePopularCubit create(BuildContext context) =>
      MoviePopularCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch({isRefresh = false}) async {
    try {
      emit(LoadingMoviePopularState());
      final response =
          await _movieRepository.fetchPopular(isRefresh: isRefresh);
      if (response != null && response.isNotEmpty) {
        emit(SuccessMoviePopularState(response
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
        emit(EmptyMoviePopularState());
      }
    } catch (error) {
      emit(FailureMoviePopularState(error.toString()));
    }
  }
}
