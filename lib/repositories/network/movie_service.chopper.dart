// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$MovieService extends MovieService {
  _$MovieService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MovieService;

  @override
  Future<Response<MovieResponse>> getNowPlaying() {
    final Uri $url = Uri.parse('/movie/now_playing');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MovieResponse, MovieResponse>($request);
  }

  @override
  Future<Response<MovieResponse>> getPopular() {
    final Uri $url = Uri.parse('/movie/popular');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MovieResponse, MovieResponse>($request);
  }

  @override
  Future<Response<MovieResponse>> getUpcoming() {
    final Uri $url = Uri.parse('/movie/upcoming');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<MovieResponse, MovieResponse>($request);
  }

  @override
  Future<Response<Movie>> getMovieDetail(String movieId) {
    final Uri $url = Uri.parse('/movie/${movieId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Movie, Movie>($request);
  }

  @override
  Future<Response<ReviewResponse>> getMovieReviews(String movieId) {
    final Uri $url = Uri.parse('/movie/${movieId}/reviews');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ReviewResponse, ReviewResponse>($request);
  }
}
