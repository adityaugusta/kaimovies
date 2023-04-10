import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/view/pages/movie_detail_page.dart';
import 'package:kaimovies/widgets/card_poster.dart';

class UpcomingMoviesView extends StatelessWidget {
  const UpcomingMoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Upcoming',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          height: 200.0,
          width: double.infinity,
          child: BlocBuilder<MovieUpcomingCubit, MovieUpcomingState>(
            builder: (_, state) {
              if (state is SuccessMovieUpcomingState) {
                final movies = state.movies;
                return ListView.separated(
                  key: const PageStorageKey<String>('movie_upcoming'),
                  itemCount: movies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int index) {
                    final movie = movies[index];
                    return PosterCard(
                      title: movie.title,
                      imageUrl: getImageUrl(movie.posterPath ?? ''),
                      onTap: () => context.goNamed(MovieDetailPage.name,
                          params: {'id': movie.id.toString()}),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 10.0),
                );
              }
              return ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, int index) {
                  return SizedBox(
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150,
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white10,
                              boxShadow: [cardShadow],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 20,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white10,
                            boxShadow: [cardShadow],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 10.0),
              );
            },
          ),
        ),
      ],
    );
  }
}
