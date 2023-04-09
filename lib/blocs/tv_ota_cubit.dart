import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/injector.dart';
import 'package:kaimovies/repositories/tv_repository.dart';
import 'tv_ota_state.dart';

export 'tv_ota_state.dart';

class TvOnTheAirCubit extends Cubit<TvOnTheAirState> {
  TvOnTheAirCubit(this._tvRepository) : super(TvOnTheAirState.loading());

  static TvOnTheAirCubit create(BuildContext context) =>
      TvOnTheAirCubit(injector.get());

  final TvRepository _tvRepository;

  Future<void> fetch() async {
    try {
      final res = await _tvRepository.fetchOnTheAir();
      if (res != null && res.isNotEmpty) {
        emit(TvOnTheAirState.success(res));
      } else {
        emit(TvOnTheAirState.empty());
      }
    } catch (error) {
      emit(TvOnTheAirState.error());
    }
  }
}
