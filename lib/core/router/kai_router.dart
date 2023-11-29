import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/core/home/screens/pages/home_page.dart';
import 'package:kaimovies/features/detail/screens/blocs/movie_detail_cubit.dart';
import 'package:kaimovies/features/movie/screens/pages/movie_detail_page.dart';
import 'package:kaimovies/features/tv/screens/pages/tv_detail_page.dart';

part 'kai_router.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<MovieDetailRoute>(
      name: MovieDetailPage.name,
      path: 'movie-detail/:id',
    ),
    TypedGoRoute<TvDetailRoute>(
      name: TvDetailPage.name,
      path: 'tv-detail/:id',
    ),
  ],
)
@immutable
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

@immutable
class MovieDetailRoute extends GoRouteData {
  const MovieDetailRoute({this.id = ''});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
      create: (context) => MovieDetailCubit.create(context)..fetch(id),
      child: MovieDetailPage(movieId: id));
}

@immutable
class TvDetailRoute extends GoRouteData {
  const TvDetailRoute({this.id = ''});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      TvDetailPage(tvId: id);
}
