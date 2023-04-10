import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaimovies/model/review.dart';
import 'package:kaimovies/model/tv.dart';

part 'tv_detail_state.freezed.dart';

@freezed
class TvDetailState with _$TvDetailState {
  factory TvDetailState.loading() = LoadingTvDetailState;

  factory TvDetailState.success(Tv tv, List<Review> reviews) =
      SuccessTvDetailState;

  factory TvDetailState.empty() = EmptyTvDetailState;

  factory TvDetailState.error() = ErrorTvDetailState;
}
