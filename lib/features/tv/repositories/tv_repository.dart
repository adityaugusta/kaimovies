import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/features/tv/models/tv.dart';
import 'package:kaimovies/features/tv/repositories/services/tv_service.dart';

class TvRepository {
  TvRepository(this._tvService);

  final TvService _tvService;

  Future<List<Tv>?> fetchOnTheAir() async {
    final response = await _tvService.getOnTheAir();
    return response.body?.tvs;
  }

  Future<List<Tv>?> fetchPopular() async {
    final response = await _tvService.getPopular();
    return response.body?.tvs;
  }

  Future<Tv?> getTvDetail(String tvId) async {
    final response = await _tvService.getTvDetail(tvId);
    return response.body;
  }

  Future<List<Review>?> getTvReviews(String tvId) async {
    final response = await _tvService.getTvReviews(tvId);
    return response.body?.reviews;
  }
}
