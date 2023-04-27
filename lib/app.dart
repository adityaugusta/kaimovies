import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/view/pages/detail/movie_detail_page.dart';
import 'package:kaimovies/view/pages/detail/tv_detail_page.dart';
import 'package:kaimovies/view/pages/home_page.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          name: MovieDetailPage.name,
          path: 'movie-detail/:id',
          builder: (context, state) =>
              MovieDetailPage(movieId: state.params['id']),
        ),
        GoRoute(
          name: TvDetailPage.name,
          path: 'tv-detail/:id',
          builder: (context, state) => TvDetailPage(tvId: state.params['id']),
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
          backgroundColor: backgroundColor,
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
