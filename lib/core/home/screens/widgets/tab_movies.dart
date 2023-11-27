import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_now_playing_view.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_popular_view.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_upcoming_view.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class MoviesTab extends StatefulWidget {
  const MoviesTab({super.key});

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab>
    with AutomaticKeepAliveClientMixin {
  final _backgroundImage = PosterValue(null);

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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    backgroundColor.withOpacity(0.45),
                    Colors.transparent,
                    backgroundColor.withOpacity(0.45),
                    backgroundColor.withOpacity(0.70),
                    backgroundColor.withOpacity(0.90),
                    backgroundColor,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 15 + MediaQuery.of(context).padding.top,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NowPlayingMoviesView(backgroundImage: _backgroundImage),
                    const SizedBox(height: 40),
                    const PopularMoviesView(),
                    const SizedBox(height: 15),
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

class PosterValue extends ValueNotifier<Image?> {
  PosterValue(super.value);

  void updateValue(Image? val) {
    value = val;
    notifyListeners();
  }
}