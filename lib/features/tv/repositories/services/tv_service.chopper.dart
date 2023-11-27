// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TvService extends TvService {
  _$TvService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TvService;

  @override
  Future<Response<TvResponse>> getOnTheAir() {
    final Uri $url = Uri.parse('/tv/on_the_air');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TvResponse, TvResponse>($request);
  }

  @override
  Future<Response<TvResponse>> getPopular() {
    final Uri $url = Uri.parse('/tv/popular');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TvResponse, TvResponse>($request);
  }

  @override
  Future<Response<Tv>> getTvDetail(String tvId) {
    final Uri $url = Uri.parse('/tv/${tvId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Tv, Tv>($request);
  }

  @override
  Future<Response<ReviewResponse>> getTvReviews(String tvId) {
    final Uri $url = Uri.parse('/tv/${tvId}/reviews');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ReviewResponse, ReviewResponse>($request);
  }
}
