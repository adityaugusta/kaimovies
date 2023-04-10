import 'package:kaimovies/model/movie.dart';
import 'package:kaimovies/model/review.dart';
import 'package:kaimovies/repositories/network/movie_service.dart';

class MovieRepository {
  MovieRepository(this._movieService);

  final MovieService _movieService;

  Future<List<Movie>?> fetchNowPlaying() async {
    final response = await _movieService.getNowPlaying();
    return response.body?.movies;
  }

  Future<List<Movie>?> fetchPopular() async {
    final response = await _movieService.getPopular();
    return response.body?.movies;
  }

  Future<List<Movie>?> fetchUpcoming() async {
    final response = await _movieService.getUpcoming();
    return response.body?.movies;
  }

  Future<Movie?> getMovieDetail(String movieId) async {
    final response = await _movieService.getMovieDetail(movieId);
    return response.body;
  }

  Future<List<Review>?> getMovieReviews(String movieId) async {
    final response = await _movieService.getMovieReviews(movieId);
    return response.body?.reviews;
  }
}
