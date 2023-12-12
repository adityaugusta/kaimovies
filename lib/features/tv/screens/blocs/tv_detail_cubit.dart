import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/tv/repositories/tv_repository.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'tv_detail_cubit.freezed.dart';

part 'tv_detail_state.dart';

class TvDetailCubit extends Cubit<TvDetailState> {
  TvDetailCubit(this._tvRepository) : super(InitialTvDetailState());

  static TvDetailCubit create(BuildContext context) =>
      TvDetailCubit(injector.get());

  final TvRepository _tvRepository;

  Future<void> fetch(String tvId) async {
    try {
      emit(LoadingTvDetailState());
      final tv = await _tvRepository.getTvDetail(tvId);
      final reviews = await _tvRepository.getTvReviews(tvId);
      if (tv != null) {
        emit(SuccessTvDetailState(ShowDetail(
          id: tv.id,
          title: tv.name,
          tagline: tv.tagline,
          overview: tv.overview,
          posterUrl: tv.posterPath,
          backdropUrl: tv.backdropPath,
          releaseDate: '',
          genres: /*tv.genres ?? */[],
          reviews: reviews ?? [],
        )));
      } else {
        emit(EmptyTvDetailState());
      }
    } catch (error) {
      emit(FailureTvDetailState(error.toString()));
    }
  }
}
