import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/tv_detail_state.dart';
import 'package:kaimovies/injector.dart';
import 'package:kaimovies/repositories/tv_repository.dart';

export 'movie_popular_state.dart';

class TvDetailCubit extends Cubit<TvDetailState> {
  TvDetailCubit(this._tvRepository) : super(TvDetailState.loading());

  static TvDetailCubit create(BuildContext context) =>
      TvDetailCubit(injector.get());

  final TvRepository _tvRepository;

  Future<void> fetch(String tvId) async {
    try {
      final detail = await _tvRepository.getTvDetail(tvId);
      final reviews = await _tvRepository.getTvReviews(tvId);
      if (detail != null) {
        emit(TvDetailState.success(detail, reviews ?? []));
      } else {
        emit(TvDetailState.empty());
      }
    } catch (error) {
      emit(TvDetailState.error());
    }
  }
}
