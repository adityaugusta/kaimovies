// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kai_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'movie-detail/:id',
          name: 'movieDetail',
          factory: $MovieDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'tv-detail/:id',
          name: 'tvDetail',
          factory: $TvDetailRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MovieDetailRouteExtension on MovieDetailRoute {
  static MovieDetailRoute _fromState(GoRouterState state) => MovieDetailRoute(
        id: state.pathParameters['id']! ?? '',
      );

  String get location => GoRouteData.$location(
        '/movie-detail/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TvDetailRouteExtension on TvDetailRoute {
  static TvDetailRoute _fromState(GoRouterState state) => TvDetailRoute(
        id: state.pathParameters['id']! ?? '',
      );

  String get location => GoRouteData.$location(
        '/tv-detail/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
