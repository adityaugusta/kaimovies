import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/tv/repositories/tv_repository.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/utilities/injector.dart';

part 'tv_ota_cubit.freezed.dart';
part 'tv_ota_state.dart';

class TvOnTheAirCubit extends Cubit<TvOnTheAirState> {
  TvOnTheAirCubit(this._tvRepository) : super(InitialTvOnTheAirState());

  static TvOnTheAirCubit create(BuildContext context) =>
      TvOnTheAirCubit(injector.get());

  final TvRepository _tvRepository;

  Future<void> fetch() async {
    try {
      emit(LoadingTvOnTheAirState());
      final response = await _tvRepository.fetchOnTheAir();
      if (response != null && response.isNotEmpty) {
        emit(SuccessTvOnTheAirState(response
            .map((movie) => ShowDetail(
                id: movie.id,
                title: movie.name,
                tagline: movie.tagline,
                overview: movie.overview,
                posterUrl: movie.posterPath,
                releaseDate: '',
                genres: /*tv.genres ?? */ [],
                reviews: []))
            .toList()));
      } else {
        emit(EmptyTvOnTheAirState());
      }
    } catch (error) {
      emit(FailureTvOnTheAirState(error.toString()));
    }
  }
}
