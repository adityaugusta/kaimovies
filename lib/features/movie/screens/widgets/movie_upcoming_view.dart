import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/features/movie/screens/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/features/movie/screens/pages/movie_detail_page.dart';
import 'package:kaimovies/widgets/horizontal_list_view.dart';

class UpcomingMoviesView extends StatelessWidget {
  const UpcomingMoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieUpcomingCubit, MovieUpcomingState>(
      builder: (_, state) {
        if (state is SuccessMovieUpcomingState) {
          return HorizontalListView(
            key: const PageStorageKey<String>('movie_upcoming'),
            title: 'Upcoming',
            data: state.movies,
            onItemTap: (movie) => context.goNamed(MovieDetailPage.name,
                pathParameters: {'id': movie.id.toString()}),
          );
        }
        return HorizontalListView.shimmer();
      },
    );
  }
}
