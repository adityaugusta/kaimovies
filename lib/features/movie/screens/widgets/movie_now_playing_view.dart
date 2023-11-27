import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/core/home/screens/widgets/tab_movies.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_now_playing_cubit.dart';
import 'package:kaimovies/features/movie/screens/pages/movie_detail_page.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class NowPlayingMoviesView extends StatelessWidget {
  const NowPlayingMoviesView({super.key, required this.backgroundImage});

  final PosterValue backgroundImage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<MovieNowPlayingCubit, MovieNowPlayingState>(
      builder: (_, state) {
        if (state is SuccessMovieNowPlayingState) {
          final movies = state.movies;
          return Column(
            children: [
              const SizedBox(
                height: 30,
                child: Text(
                  'Now Playing',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    shadows: textShadow
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: size.height / 2 + 30,
                child: CardSwiper(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  numberOfCardsDisplayed: 3,
                  onSwipe: (_, currentPosition, ___) {
                    if (currentPosition != null) {
                      final movie = movies[currentPosition];
                      final posterUrl = getImageUrl(movie.posterPath ?? '');
                      final poster = Image.network(posterUrl);
                      backgroundImage.updateValue(poster);
                    }
                    return true;
                  },
                  cardsCount: movies.length,
                  cardBuilder: (context, index, _, __) {
                    final movie = movies[index];
                    final posterUrl = getImageUrl(movie.posterPath ?? '');
                    if (backgroundImage.value == null) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        final poster = Image.network(posterUrl);
                        backgroundImage.updateValue(poster);
                      });
                    }
                    return GestureDetector(
                      onTap: () => context.goNamed(MovieDetailPage.name,
                          pathParameters: {'id': movie.id.toString()}),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Colors.white10,
                          boxShadow: const [cardShadow],
                          image: DecorationImage(
                            image: Image.network(posterUrl).image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
        return Column(
          children: [
            Container(
              width: 150,
              height: 30,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white10,
                boxShadow: [cardShadow],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: size.height / 2 + 30,
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 15.0,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white10,
                  boxShadow: [cardShadow],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
