import 'dart:ui' show Brightness, FontWeight, ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show Brightness, FontWeight, SystemUiOverlayStyle;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocProvider, MultiBlocProvider;
import 'package:kaimovies/core/home/screens/widgets/tab_movies.dart';
import 'package:kaimovies/core/home/screens/widgets/tab_profile.dart';
import 'package:kaimovies/core/home/screens/widgets/tab_televisions.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = const <Widget>[
    MoviesTab(key: PageStorageKey<String>('tab_movies')),
    TelevisionsTab(key: PageStorageKey<String>('tab_televisions')),
    ProfileTab(key: PageStorageKey<String>('tab_profile')),
  ];
  final _pageController = PageController();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: backgroundColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: MultiBlocProvider(
        providers: const [
          BlocProvider(create: MovieNowPlayingCubit.create),
          BlocProvider(create: MoviePopularCubit.create),
          BlocProvider(create: MovieUpcomingCubit.create),
          BlocProvider(create: TvOnTheAirCubit.create),
          BlocProvider(create: TvPopularCubit.create),
        ],
        child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            extendBody: true,
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _pages,
            ),
            bottomNavigationBar: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Theme(
                  data: ThemeData(highlightColor: Colors.transparent),
                  child: BottomNavigationBar(
                    backgroundColor: backgroundLightColor.withOpacity(0.5),
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.grey,
                    selectedLabelStyle: const TextStyle(
                        fontSize: 12.5, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: const TextStyle(fontSize: 12.0),
                    iconSize: 28,
                    currentIndex: _selectedIndex,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.movie_creation_outlined),
                        activeIcon: Icon(Icons.movie),
                        label: 'Movie',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.panorama_wide_angle_rounded),
                        activeIcon: Icon(Icons.panorama_wide_angle_select),
                        label: 'TV',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle_outlined),
                        activeIcon: Icon(Icons.account_circle),
                        label: 'Profile',
                      ),
                    ],
                    onTap: _onItemTapped,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

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
}
