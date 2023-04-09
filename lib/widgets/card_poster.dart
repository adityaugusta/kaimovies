import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/main.dart';
import 'package:kaimovies/model/movie.dart';

class MoviePosterCard extends StatelessWidget {
  const MoviePosterCard(
      {Key? key, required this.movie, required this.title, required this.index})
      : super(key: key);

  final Movie movie;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    final poster = movie.posterPath ?? '';
    final pos = post + poster;
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            child: GestureDetector(
              onTap: () => context
                  .goNamed('detail', params: {'id': movie.id.toString()}),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white10,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    )
                  ],
                  image: DecorationImage(
                    image: Image.network(
                      pos,
                    ).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(movie.title, overflow: TextOverflow.ellipsis, maxLines: 2),
        ],
      ),
    );
  }
}
