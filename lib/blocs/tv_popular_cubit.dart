import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/main.dart';
import 'package:kaimovies/repositories/tv_repository.dart';
import 'tv_popular_state.dart';

export 'tv_popular_state.dart';

class TvPopularCubit extends Cubit<TvPopularState> {
  TvPopularCubit(this._tvRepository) : super(TvPopularState.loading());

  static TvPopularCubit create(BuildContext context) =>
      TvPopularCubit(injector.get());

  final TvRepository _tvRepository;

  Future<void> fetch() async {
    try {
      final res = await _tvRepository.fetchPopular();
      if (res != null && res.isNotEmpty) {
        emit(TvPopularState.success(res));
      } else {
        emit(TvPopularState.empty());
      }
    } catch (error) {
      emit(TvPopularState.error());
    }
  }
}
