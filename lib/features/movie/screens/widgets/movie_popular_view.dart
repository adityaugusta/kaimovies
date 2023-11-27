import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/features/movie/screens/pages/movie_detail_page.dart';
import 'package:kaimovies/widgets/horizontal_list_view.dart';

class PopularMoviesView extends StatelessWidget {
  const PopularMoviesView({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviePopularCubit, MoviePopularState>(
      builder: (_, state) {
        if (state is SuccessMoviePopularState) {
          final movies = state.movies;
          return HorizontalListView<Movie>(
            key: const PageStorageKey<String>('movie_popular'),
            title: title ?? 'Popular',
            data: movies,
            onItemTap: (movie) => context.goNamed(MovieDetailPage.name,
                pathParameters: {'id': movie.id.toString()}),
          );
        }
        return HorizontalListView.loading();
      },
    );
  }
}