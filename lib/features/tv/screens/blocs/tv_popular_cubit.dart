import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/tv/models/tv.dart';
import 'package:kaimovies/features/tv/repositories/tv_repository.dart';
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
      final res = await _tvRepository.fetchPopular();
      if (res != null && res.isNotEmpty) {
        emit(SuccessTvPopularState(res));
      } else {
        emit(EmptyTvPopularState());
      }
    } catch (error) {
      emit(FailureTvPopularState(error.toString()));
    }
  }
}
