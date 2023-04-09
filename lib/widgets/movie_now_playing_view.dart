import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/main.dart';

class NowPlayingMoviesView extends StatelessWidget {
  const NowPlayingMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Now Playing',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        BlocBuilder<MovieNowPlayingCubit, MovieNowPlayingState>(
          builder: (_, state) {
            if (state is SuccessMovieNowPlayingState) {
              final movies = state.movies;
              return SizedBox(
                width: double.infinity,
                height: size.height / 2 + 30,
                child: CardSwiper(
                  cardsCount: movies.length,
                  numberOfCardsDisplayed: 3,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 15.0,
                  ),
                  cardBuilder: (context, index) {
                    final posterUrl = post + (movies[index].posterPath ?? '');
                    return GestureDetector(
                      onTap: () => context.goNamed('movieDetail',
                          params: {'id': movies[index].id.toString()}),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Colors.white10,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 10,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                          image: DecorationImage(
                            image: Image.network(posterUrl).image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
