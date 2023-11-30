import 'dart:ui' show ImageFilter;

// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_now_playing_view.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_popular_view.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_upcoming_view.dart';
// import 'package:kaimovies/features/utilities/poster_value_controller.dart';
import 'package:kaimovies/utilities/context_extensions.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class MoviesTab extends StatefulWidget {
  const MoviesTab({super.key});

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab>
    with AutomaticKeepAliveClientMixin {
  // final _posterValueController = PosterValueController(null);
  final _refreshController = RefreshController();

  @override
  void initState() {
    _fetchAll();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return /*ValueListenableBuilder(
      valueListenable: _posterValueController,
      builder: (context, value, _) {
        final image = value;
        return Container*/SizedBox(
          width: double.infinity,
          height: double.infinity,
          // decoration: BoxDecoration(
          //   image: image != null
          //       ? DecorationImage(image: CachedNetworkImageProvider(
          //     image,
          //     cacheKey: value,
          //     cacheManager: _imageUrlCacheManager,
          //   ), fit: BoxFit.cover)
          //       : null,
          // ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: /*DecoratedBox(
              decoration: BoxDecoration(gradient: backgroundGradient),
              child: */SmartRefresher(
                physics: const BouncingScrollPhysics(),
                controller: _refreshController,
                header: BezierHeader(
                  bezierColor: backgroundLightColor,
                ),
                onRefresh: () => _fetchAll(isRefresh: true),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: 15 + context.screenPadding.top,
                    bottom: 15 + context.screenPadding.bottom,
                  ),
                  child:BlocListener<MovieNowPlayingCubit, MovieNowPlayingState>(
                    listener: (context, state) {
                      if (state is SuccessMovieNowPlayingState) {
                        _refreshController.refreshCompleted();
                      }
                      if (state is FailureMovieNowPlayingState) {
                        _refreshController.refreshFailed();
                      }
                    },
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NowPlayingMoviesView(
                          // posterValueController: _posterValueController,
                        ),
                        KaiGap.s40,
                        PopularMoviesView(),
                        KaiGap.s15,
                        UpcomingMoviesView(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          /*),
        );
      },*/
    );
  }

  @override
  bool get wantKeepAlive => true;

  void _fetchAll({isRefresh = false}) {
    context.read<MovieNowPlayingCubit>().fetch(isRefresh: isRefresh);
    context.read<MoviePopularCubit>().fetch(isRefresh: isRefresh);
    context.read<MovieUpcomingCubit>().fetch(isRefresh: isRefresh);
  }
}
