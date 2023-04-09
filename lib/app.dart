import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/repositories/network/utilities/ui_utils.dart';
import 'package:kaimovies/view/pages/home_page.dart';
import 'package:kaimovies/view/pages/movie_detail_page.dart';
import 'package:kaimovies/view/pages/tv_detail_page.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          name: 'movieDetail',
          path: 'movie-detail/:id',
          builder: (context, state) => MovieDetailPage(state.params['id']),
        ),
        GoRoute(
          name: 'tvDetail',
          path: 'tv-detail/:id',
          builder: (context, state) => TvDetailPage(state.params['id']),
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(),
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.teal,
          brightness: Brightness.dark,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: backgroundLightColor,
          selectedItemColor: Colors.teal,
        ),
        canvasColor: backgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(backgroundColor: backgroundColor),
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}