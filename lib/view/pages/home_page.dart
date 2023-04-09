import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/view/tabs/tab_movies.dart';
import 'package:kaimovies/view/tabs/tab_profile.dart';
import 'package:kaimovies/view/tabs/tab_televisions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final _pages = <Widget>[
    const MoviesTab(
      key: PageStorageKey<String>('tab_movies'),
    ),
    const TelevisionsTab(
      key: PageStorageKey<String>('tab_televisions'),
    ),
    const ProfileTab(
      key: PageStorageKey<String>('tab_profile'),
    ),
  ];
  final _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 100),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        systemNavigationBarColor: backgroundLightColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  MovieNowPlayingCubit.create(context)..fetch()),
          BlocProvider(
              create: (context) => MoviePopularCubit.create(context)..fetch()),
          BlocProvider(
              create: (context) => MovieUpcomingCubit.create(context)..fetch()),
          BlocProvider(
              create: (context) => TvOnTheAirCubit.create(context)..fetch()),
          BlocProvider(
              create: (context) => TvPopularCubit.create(context)..fetch()),
        ],
        child: SafeArea(
          child: Scaffold(
            body: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: _pages,
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.movie),
                  label: 'Movie',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.tv),
                  label: 'TV',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: 'Profile',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              iconSize: 28,
              backgroundColor: backgroundLightColor,
            ),
          ),
        ),
      ),
    );
  }
}
