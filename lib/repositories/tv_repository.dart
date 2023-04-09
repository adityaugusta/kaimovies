import 'package:kaimovies/model/review.dart';
import 'package:kaimovies/model/tv.dart';
import 'package:kaimovies/repositories/network/tv_service.dart';

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