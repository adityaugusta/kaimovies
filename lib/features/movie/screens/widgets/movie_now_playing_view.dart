import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/features/movie/screens/pages/movie_detail_page.dart';
import 'package:kaimovies/features/utilities/poster_value_controller.dart';
import 'package:kaimovies/widgets/kai_card_swiper.dart';
import 'package:kaimovies/widgets/kai_poster_card_shimmer.dart';

class NowPlayingMoviesView extends StatelessWidget {
  const NowPlayingMoviesView({super.key, required this.backgroundImage});

  final PosterValueController backgroundImage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieNowPlayingCubit, MovieNowPlayingState>(
      builder: (_, state) {
        if (state is SuccessMovieNowPlayingState) {
          return KaiCardSwiper(
            title: 'Now Playing',
            data: state.movies,
            backgroundImage: backgroundImage,
            onItemTap: (movie) => context.pushNamed(MovieDetailPage.name,
                pathParameters: {'id': movie.id.toString()}),
          );
        }
        return const KaiPosterCardShimmer();
      },
    );
  }
}
