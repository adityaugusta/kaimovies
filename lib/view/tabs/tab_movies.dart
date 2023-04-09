import 'package:flutter/material.dart';
import 'package:kaimovies/widgets/movie_now_playing_view.dart';
import 'package:kaimovies/widgets/movie_popular_view.dart';
import 'package:kaimovies/widgets/movie_upcoming_view.dart';

class MoviesTab extends StatefulWidget {
  const MoviesTab({super.key});

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            NowPlayingMoviesView(),
            SizedBox(height: 40.0),
            PopularMoviesView(),
            SizedBox(height: 15.0),
            UpcomingMoviesView(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
