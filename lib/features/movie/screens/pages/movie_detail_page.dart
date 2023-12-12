import 'dart:ui' show Brightness, ImageFilter;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/features/detail/screens/blocs/movie_detail_cubit.dart';
import 'package:kaimovies/features/detail/screens/widgets/detail_view.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/repositories/cache/image_cache_manager.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/context_extensions.dart';
import 'package:kaimovies/utilities/injector.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/button_back.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key, required this.movieId});

  static const name = 'movieDetail';

  final String movieId;

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  final _showDetailValue = ValueNotifier<ShowDetail>(ShowDetail.empty());

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            leading: const ButtonBack(),
            actions: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => context.pop(),
                child: const SizedBox(
                  width: kToolbarHeight,
                  height: kToolbarHeight,
                  child: Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                    shadows: textShadow,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          body: BlocBuilder<MovieDetailCubit, MovieDetailState>(
            builder: (context, state) {
              if (state is SuccessMovieDetailState) {
                final posterUrl = getImageUrl(state.movie.posterUrl);
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: backgroundColor,
                  child: Stack(
                    children: [
                      Container(
                        height: context.screenSize.height / 1.2,
                        decoration: posterUrl != null
                            ? BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                              posterUrl,
                              cacheKey: posterUrl,
                              cacheManager:
                              injector.get<ImageUrlCacheManager>(),
                            ),
                            fit: BoxFit.cover,
                          ),
                        )
                            : null,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.5),
                              backgroundColor.withOpacity(0.25),
                              backgroundColor.withOpacity(0.90),
                              backgroundColor,
                              backgroundColor,
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                            child: DetailView(state.movie),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          extendBodyBehindAppBar: true,
        ),
      ));
}
