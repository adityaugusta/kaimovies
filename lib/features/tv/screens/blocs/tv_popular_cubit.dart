import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/tv/repositories/tv_repository.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'tv_popular_cubit.freezed.dart';
part 'tv_popular_state.dart';

class TvPopularCubit extends Cubit<TvPopularState> {
  TvPopularCubit(this._tvRepository) : super(InitialTvPopularState());

  static TvPopularCubit create(BuildContext context) =>
      TvPopularCubit(injector.get());

  final TvRepository _tvRepository;

  Future<void> fetch() async {
    try {
      emit(LoadingTvPopularState());
      final response = await _tvRepository.fetchPopular();
      if (response != null && response.isNotEmpty) {
        emit(SuccessTvPopularState(response
            .map((tv) => ShowDetail(
                id: tv.id,
                title: tv.name,
                tagline: tv.tagline,
                overview: tv.overview,
                posterUrl: tv.posterPath,
                releaseDate: '',
                genres: /*tv.genres ?? */ [],
                reviews: []))
            .toList()));
      } else {
        emit(EmptyTvPopularState());
      }
    } catch (error) {
      emit(FailureTvPopularState(error.toString()));
    }
  }
}
