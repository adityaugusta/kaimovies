import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/main.dart';
import 'package:kaimovies/view/pages/detail_page.dart';
import 'package:kaimovies/view/pages/home_page.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          name: 'detail',
          path: "detail/:id",
          builder: (context, state) => DetailPage(state.params['id']),
        )
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
        canvasColor: backgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(backgroundColor: backgroundColor),
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
    );
  }
}