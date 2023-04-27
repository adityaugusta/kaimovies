import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/view/pages/detail/movie_detail_page.dart';
import 'package:kaimovies/widgets/horizontal_list_view.dart';

class UpcomingMoviesView extends StatelessWidget {
  const UpcomingMoviesView({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieUpcomingCubit, MovieUpcomingState>(
      builder: (_, state) {
        if (state is SuccessMovieUpcomingState) {
          final movies = state.movies;
          return HorizontalListView(
            title: title ?? 'Upcoming',
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
