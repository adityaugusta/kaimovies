import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/features/tv/models/tv.dart';
import 'package:kaimovies/features/tv/repositories/tv_repository.dart';
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
      final res = await _tvRepository.fetchOnTheAir();
      if (res != null && res.isNotEmpty) {
        emit(SuccessTvOnTheAirState(res));
      } else {
        emit(EmptyTvOnTheAirState());
      }
    } catch (error) {
      emit(FailureTvOnTheAirState(error.toString()));
    }
  }
}
