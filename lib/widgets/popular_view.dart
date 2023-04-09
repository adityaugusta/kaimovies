import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/widgets/card_poster.dart';

class PopularView extends StatelessWidget {
  const PopularView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15.0),
        BlocBuilder<MoviePopularCubit, MoviePopularState>(
          builder: (_, state) {
            if (state is SuccessMoviePopularState) {
              return SizedBox(
                height: 200.0,
                width: double.infinity,
                child: ListView.separated(
                  key: PageStorageKey<String>('popular'),
                  // controller: scrollController,
                  itemCount: state.movies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int index) => MoviePosterCard(
                    movie: state.movies[index],
                    title: state.movies[index].title ?? 'undefined',
                    index: index,
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(width: 10.0),
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