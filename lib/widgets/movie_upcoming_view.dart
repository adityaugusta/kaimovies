import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_upcoming_cubit.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
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
        BlocBuilder<MovieUpcomingCubit, MovieUpcomingState>(
          builder: (_, state) {
            if (state is SuccessMovieUpcomingState) {
              return SizedBox(
                height: 200.0,
                width: double.infinity,
                child: ListView.separated(
                  key: const PageStorageKey<String>('movie_upcoming'),
                  itemCount: state.movies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int index) => PosterCard(
                    title: state.movies[index].title,
                    imageUrl:
                        getImageUrl(state.movies[index].posterPath ?? ''),
                    onTap: () => context.goNamed('movieDetail',
                        params: {'id': state.movies[index].id.toString()}),
                  ),
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
