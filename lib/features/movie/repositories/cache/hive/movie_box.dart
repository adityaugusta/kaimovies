import 'dart:async' show Future;

import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/repositories/cache/hive/models/hive_map.dart';
import 'package:kaimovies/repositories/cache/hive/utilities/hive_box.dart';

class MovieBox extends HiveBox {
  MovieBox({super.name = 'movieBox', super.path});

  int _movieSortAsc(Movie a, Movie b) {
    return b.popularity.compareTo(a.popularity);
  }

  // int _movieSortDesc(Movie a, Movie b) {
  //   return a.popularity.compareTo(b.popularity);
  // }

  Future<void> insertAll(String name, List<Movie> movies) async {
    final box = await openBox(name: name);
    movies.sort(_movieSortAsc);
    final toMap = {
      for (final movie in movies) movie.id: HiveMap.convert(movie.toJson())
    };
    return box.putAll(toMap);
  }

  Future<List<Movie>?> getAll(String name) async {
    final box = await openBox(name: name);
    final values = box.values;
    final list = values.map((e) => Movie.fromJson(e.data)).toList();
    list.sort(_movieSortAsc);
    return list;
  }
}
