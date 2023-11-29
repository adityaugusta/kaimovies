import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_now_playing_view.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_popular_view.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_upcoming_view.dart';
import 'package:kaimovies/features/utilities/poster_value_controller.dart';
import 'package:kaimovies/utilities/context_extensions.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';

class MoviesTab extends StatefulWidget {
  const MoviesTab({super.key});

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab>
    with AutomaticKeepAliveClientMixin {
  final _backgroundImage = PosterValueController(null);

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
    return ValueListenableBuilder(
      valueListenable: _backgroundImage,
      builder: (context, value, _) {
        final image = value?.image;
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: image != null
                ? DecorationImage(image: image, fit: BoxFit.cover)
                : null,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(gradient: backgroundGradient),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 15 + context.screenPadding.top,
                  bottom: 15 + context.screenPadding.bottom,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NowPlayingMoviesView(backgroundImage: _backgroundImage),
                    KaiGap.s40,
                    const PopularMoviesView(),
                    KaiGap.s15,
                    const UpcomingMoviesView(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
