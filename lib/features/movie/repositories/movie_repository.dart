import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/repositories/cache/hive/movie_box.dart';
import 'package:kaimovies/features/movie/repositories/network/movie_service.dart';
import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/repositories/base_repository.dart';
import 'package:kaimovies/repositories/network/utilities/chopper_extensions.dart';

class MovieRepository extends BaseRepository {
  MovieRepository(
    this._movieService,
    this._movieBox, {
    super.label = 'movies',
    required super.cacheControlBox,
  });

  final MovieService _movieService;
  final MovieBox _movieBox;

  static const String nowPlaying = 'now-playing';
  static const String popular = 'popular';
  static const String upcoming = 'upcoming';

  Future<List<Movie>?> fetchNowPlaying({bool isRefresh = false}) async {
    Future<List<Movie>> getNowPlaying() async {
      final response = await _movieService.getNowPlaying();
      return response.bodyNotNull.movies;
    }

    return await withCache<List<Movie>>(
      id: nowPlaying,
      request: () async => getNowPlaying(),
      write: (response) async {
        if (response.isNotEmpty) {
          await _movieBox.insertAll(nowPlaying, response);
        }
      },
      read: () async => _movieBox.getAll(nowPlaying),
      isRefresh: isRefresh,
    );
  }

  Future<List<Movie>?> fetchPopular({bool isRefresh = false}) async {
    Future<List<Movie>> getPopular() async {
      final response = await _movieService.getPopular();
      return response.bodyNotNull.movies;
    }

    return await withCache<List<Movie>>(
      id: popular,
      request: () async => getPopular(),
      write: (response) async {
        if (response.isNotEmpty) {
          await _movieBox.insertAll(popular, response);
        }
      },
      read: () async => _movieBox.getAll(popular),
      isRefresh: isRefresh,
    );
  }

  Future<List<Movie>?> fetchUpcoming({bool isRefresh = false}) async {
    Future<List<Movie>> getUpcoming() async {
      final response = await _movieService.getUpcoming();
      return response.bodyNotNull.movies;
    }

    return await withCache<List<Movie>>(
      id: upcoming,
      request: () async => getUpcoming(),
      write: (response) async {
        if (response.isNotEmpty) {
          await _movieBox.insertAll(upcoming, response);
        }
      },
      read: () async => _movieBox.getAll(upcoming),
      isRefresh: isRefresh,
    );
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
