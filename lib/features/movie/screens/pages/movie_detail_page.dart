import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/features/detail/screens/blocs/movie_detail_cubit.dart';
import 'package:kaimovies/features/detail/screens/widgets/detail_backdrop_view.dart';
import 'package:kaimovies/features/detail/screens/widgets/detail_view.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
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
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: BlocProvider(
            create: (context) =>
                MovieDetailCubit.create(context)..fetch(widget.movieId),
            child: BlocBuilder<MovieDetailCubit, MovieDetailState>(
              builder: (context, state) {
                if (state is SuccessMovieDetailState) {
                  final movie = state.movie;
                  final posterUrl = getImageUrl(movie.posterPath ?? '');
                  final backdropUrl = getImageUrl(movie.backdropPath ?? '');
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: backgroundColor,
                    child: Stack(
                      children: [
                        BackdropView(backdropUrl),
                        DetailView(
                          title: movie.title,
                          overview: movie.overview,
                          posterUrl: posterUrl,
                          reviews: state.reviews,
                        ),
                        Positioned(
                          left: 15.0,
                          top: padding.top + 15.0,
                          child: const ButtonBack(),
                        ),
                      ],
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
  }
}
