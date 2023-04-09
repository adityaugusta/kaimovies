import 'dart:async';

import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String auth = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiNWIwNjQwMzgyMGY5ZDNiY2Q1MmRmMWE4Njg2MmZlMyIsInN1YiI6IjU3MjRhY2VlOTI1MTQxNmRmOTAwMGVlNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.yoV2o_Z2ifuCit3bhvhx5IoI4hg_KZt1ukuTMNFY2O0';

  @override
  FutureOr<Request> onRequest(Request request) async {
    return request.copyWith(headers: {'Authorization': 'Bearer $auth'});
  }
}
