import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/view/pages/detail/movie_detail_page.dart';
import 'package:kaimovies/widgets/card_swiper_view.dart';

class NowPlayingMoviesView extends StatelessWidget {
  const NowPlayingMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieNowPlayingCubit, MovieNowPlayingState>(
      builder: (_, state) {
        if (state is SuccessMovieNowPlayingState) {
          return CardSwiperView(
            title: 'Now Playing',
            controller: CardSwiperController(),
            items: state.movies
                .map((e) => CardSwiperModel(id: e.id, imageUrl: e.posterPath))
                .toList(),
            onTap: (item) => context.pushNamed(MovieDetailPage.name,
                params: {'id': item.id.toString()}),
          );
        }
        return CardSwiperView.loading(context);
      },
    );
  }
}
