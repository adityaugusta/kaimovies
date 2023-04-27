import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_detail_cubit.dart';
import 'package:kaimovies/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/view/tabs/tab_movies.dart';
import 'package:kaimovies/view/tabs/tab_profile.dart';
import 'package:kaimovies/view/tabs/tab_televisions.dart';

const _pages = <Widget>[
  MoviesTab(key: PageStorageKey<String>('tab_movies')),
  TelevisionsTab(key: PageStorageKey<String>('tab_televisions')),
  ProfileTab(key: PageStorageKey<String>('tab_profile')),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
      // _pageController.animateToPage(
      //   index,
      //   curve: Curves.easeIn,
      //   duration: const Duration(milliseconds: 100),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: backgroundColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: MultiBlocProvider(
        providers: const [
          BlocProvider(create: MovieNowPlayingCubit.create),
          BlocProvider(create: MoviePopularCubit.create),
          BlocProvider(create: MovieUpcomingCubit.create),
          BlocProvider(create: TvOnTheAirCubit.create),
          BlocProvider(create: TvPopularCubit.create),
        ],
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/background.png').image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SafeArea(
              bottom: false,
              child: Scaffold(
                backgroundColor: Colors.transparent,
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
