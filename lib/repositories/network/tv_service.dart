import 'package:chopper/chopper.dart';
import 'package:kaimovies/model/tv.dart';
import 'package:kaimovies/repositories/network/response/review_response.dart';
import 'package:kaimovies/repositories/network/response/tv_response.dart';

part 'tv_service.chopper.dart';

@ChopperApi(baseUrl: '/tv')
abstract class TvService extends ChopperService {
  static TvService create([ChopperClient? client]) => _$TvService(client);

  @Get(path: '/on_the_air')
  Future<Response<TvResponse>> getOnTheAir();

  @Get(path: '/popular')
  Future<Response<TvResponse>> getPopular();

  @Get(path: '/{tv_id}')
  Future<Response<Tv>> getTvDetail(@Path('tv_id') String tvId);

  @Get(path: '/{tv_id}/reviews')
  Future<Response<ReviewResponse>> getTvReviews(@Path('tv_id') String tvId);
}
