import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/view/pages/movie_detail_page.dart';
import 'package:kaimovies/widgets/card_poster.dart';

class PopularMoviesView extends StatelessWidget {
  const PopularMoviesView({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? 'Popular',
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15.0),
        BlocBuilder<MoviePopularCubit, MoviePopularState>(
          builder: (_, state) {
            if (state is SuccessMoviePopularState) {
              final movies = state.movies;
              return SizedBox(
                height: 200.0,
                width: double.infinity,
                child: ListView.separated(
                  key: const PageStorageKey<String>('movie_popular'),
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
