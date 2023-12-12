import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/models/genre.dart';

class ShowDetail {
  ShowDetail({
    required this.id,
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.genres,
    required this.reviews,
    this.tagline,
    this.posterUrl,
    this.backdropUrl,
    this.adult = false,
    this.popularity = 0.0,
    this.voteAverage = 0.0,
    this.voteCount = 0,
  });

  static ShowDetail empty() => ShowDetail(
        id: -1,
        title: '',
        tagline: '',
        overview: '',
        releaseDate: '',
        genres: [],
        reviews: [],
      );

  final int id;
  final String title;
  final String overview;
  final String releaseDate;
  final bool adult;
  final double popularity;
  final double voteAverage;
  final int voteCount;
  final String? tagline;
  final String? posterUrl;
  final String? backdropUrl;

  final List<Genre> genres;
  final List<Review> reviews;
}
