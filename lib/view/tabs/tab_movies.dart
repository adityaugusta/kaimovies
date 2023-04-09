import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/widgets/now_playing_view.dart';
import 'package:kaimovies/widgets/popular_view.dart';
import 'package:kaimovies/widgets/upcoming_view.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => MovieNowPlayingCubit.create(context)..fetch()),
        BlocProvider(
            create: (context) => MoviePopularCubit.create(context)..fetch()),
        BlocProvider(
            create: (context) => MovieUpcomingCubit.create(context)..fetch()),
      ],
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              NowPlayingView(),
              SizedBox(height: 40.0),
              PopularView(),
              SizedBox(height: 15.0),
              UpcomingView(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
