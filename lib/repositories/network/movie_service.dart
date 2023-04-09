import 'package:chopper/chopper.dart';
import 'package:kaimovies/model/movie.dart';
import 'package:kaimovies/repositories/network/response/movie_response.dart';
import 'package:kaimovies/repositories/network/response/review_response.dart';

part 'movie_service.chopper.dart';

@ChopperApi(baseUrl: '/movie')
abstract class MovieService extends ChopperService {
  static MovieService create([ChopperClient? client]) =>
      _$MovieService(client);

  @Get(path: '/now_playing')
  Future<Response<MovieResponse>> getNowPlaying();

  @Get(path: '/popular')
  Future<Response<MovieResponse>> getPopular();

  @Get(path: '/upcoming')
  Future<Response<MovieResponse>> getUpcoming();

  @Get(path: '/{movie_id}')
  Future<Response<Movie>> getMovieDetail(@Path('movie_id') String movieId);

  @Get(path: '/{movie_id}/reviews')
  Future<Response<ReviewResponse>> getMovieReviews(@Path('movie_id') String movieId);
}
