import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/main.dart';

class NowPlayingView extends StatelessWidget {
  const NowPlayingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Now Playing',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10.0),
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
                  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                  cardBuilder: (context, index) {
                    final poster = movies[index].posterPath ?? '';
                    final pos = post + poster;
                    return GestureDetector(
                      onTap: () => context.goNamed('detail', params: {'id': movies[index].id.toString()}),
                      child: Hero(
                        tag: movies[index].id,
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                            color: Colors.white10,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 10,
                                blurRadius: 10,
                                offset: const Offset(0, 3),
                              )
                            ],
                            image: DecorationImage(
                                image: Image.network(
                                  pos,
                                ).image,
                                fit: BoxFit.cover),
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