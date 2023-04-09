import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaimovies/main.dart';
import 'package:kaimovies/view/tabs/tab_movies.dart';
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
    Container(
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
        systemNavigationBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(
        child: Scaffold(
          body: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: _pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Container(), label: 'Movie'),
              BottomNavigationBarItem(icon: Container(), label: 'TV'),
              BottomNavigationBarItem(icon: Container(), label: 'Profile'),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
