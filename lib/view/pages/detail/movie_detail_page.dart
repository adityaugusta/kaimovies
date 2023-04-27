import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_detail_cubit.dart';
import 'package:kaimovies/view/pages/detail/detail_page.dart';
import 'package:kaimovies/widgets/detail/detail_view.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key, this.movieId});

  static const name = 'movieDetail';

  final String? movieId;

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BaseDetailPage(
      child: BlocBuilder<MovieDetailCubit, MovieDetailState>(
        bloc: MovieDetailCubit.create(context)..fetch(widget.movieId ?? ''),
        builder: (context, state) {
          if (state is SuccessMovieDetailState) {
            return DetailView(
              title: state.movie.title,
              overview: state.movie.overview,
              posterPath: state.movie.posterPath,
              backdropPath: state.movie.backdropPath,
              reviews: state.reviews,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
