import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/repositories/movie_repository.dart';
import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'movie_detail_cubit.freezed.dart';
part 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit(this._movieRepository) : super(InitialMovieDetailState());

  static MovieDetailCubit create(BuildContext context) =>
      MovieDetailCubit(injector.get());

  final MovieRepository _movieRepository;

  Future<void> fetch(String id) async {
    try {
      emit(LoadingMovieDetailState());
      final detail = await _movieRepository.getMovieDetail(id);
      final reviews = await _movieRepository.getMovieReviews(id);
      if (detail != null) {
        emit(SuccessMovieDetailState(detail, reviews ?? []));
      } else {
        emit(EmptyMovieDetailState());
      }
    } catch (error) {
      emit(FailureMovieDetailState(error.toString()));
    }
  }
}
