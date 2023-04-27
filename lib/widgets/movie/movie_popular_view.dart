import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/view/pages/detail/movie_detail_page.dart';
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
          return HorizontalListView(
            title: title ?? 'Popular',
            items: movies
                .map((e) =>
                    HorizontalListModel(title: e.title, imageUrl: e.posterPath))
                .toList(),
            onTap: (index) => context.goNamed(MovieDetailPage.name,
                params: {'id': movies[index].id.toString()}),
          );
        }
        return HorizontalListView.loading();
      },
    );
  }
}
