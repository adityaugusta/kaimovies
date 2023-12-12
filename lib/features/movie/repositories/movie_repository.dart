import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/movie/repositories/cache/hive/movie_box.dart';
import 'package:kaimovies/features/movie/repositories/network/movie_service.dart';
import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/features/review/repositories/cache/hive/review_box.dart';
import 'package:kaimovies/repositories/base_repository.dart';
import 'package:kaimovies/repositories/network/utilities/chopper_extensions.dart';

class MovieRepository extends BaseRepository {
  MovieRepository(
    this._movieService,
    this._movieBox,
    this._reviewBox, {
    super.label = 'movies',
    required super.cacheControlBox,
  });

  final MovieService _movieService;
  final MovieBox _movieBox;
  final ReviewBox _reviewBox;

  static const String nowPlaying = 'now-playing';
  static const String popular = 'popular';
  static const String upcoming = 'upcoming';
  static const String detail = 'detail';
  static const String review = 'review';

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

  Future<Movie?> getMovieDetail(
    int movieId, {
    bool isRefresh = false,
  }) async {
    Future<Movie> getMovieDetail() async {
      final response = await _movieService.getMovieDetail(movieId);
      return response.bodyNotNull;
    }

    return await withCache<Movie>(
      id: '$detail $movieId',
      request: () async => getMovieDetail(),
      write: (response) async {
        await _movieBox.insert(detail, response);
      },
      read: () async => _movieBox.get(detail, movieId),
      isRefresh: isRefresh,
    );
  }

  Future<List<Review>?> getMovieReviews(
    int movieId, {
    bool isRefresh = false,
  }) async {
    Future<List<Review>> getMovieReviews() async {
      final response = await _movieService.getMovieReviews(movieId);
      return response.bodyNotNull.reviews;
    }

    final id = '${review}_$movieId';

    return await withCache<List<Review>>(
      id: id,
      request: () async => getMovieReviews(),
      write: (response) async {
        await _reviewBox.insertAll(id, response);
      },
      read: () async => _reviewBox.getAll(id),
      isRefresh: isRefresh,
    );
  }
}
