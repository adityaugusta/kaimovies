import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/widgets/movie/movie_now_playing_view.dart';
import 'package:kaimovies/widgets/movie/movie_popular_view.dart';
import 'package:kaimovies/widgets/movie/movie_upcoming_view.dart';

class MoviesTab extends StatefulWidget {
  const MoviesTab({super.key});

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    context.read<MovieNowPlayingCubit>().fetch();
    context.read<MoviePopularCubit>().fetch();
    context.read<MovieUpcomingCubit>().fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            NowPlayingMoviesView(),
            SizedBox(height: 40.0),
            PopularMoviesView(),
            SizedBox(height: 10.0),
            UpcomingMoviesView(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
