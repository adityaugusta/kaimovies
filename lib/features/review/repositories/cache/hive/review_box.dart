import 'dart:async' show Future;

import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/repositories/cache/hive/models/hive_map.dart';
import 'package:kaimovies/repositories/cache/hive/utilities/hive_box.dart';

class ReviewBox extends HiveBox {
  ReviewBox({super.name = 'movieReviewBox', super.path});

  int _reviewSortAsc(Review a, Review b) {
    return (DateTime.tryParse(b.createdAt)?.millisecondsSinceEpoch ?? 0)
        .compareTo(
            (DateTime.tryParse(a.createdAt)?.millisecondsSinceEpoch ?? 0));
  }

  // int _movieSortDesc(Movie a, Movie b) {
  //   return a.popularity.compareTo(b.popularity);
  // }

  Future<void> insertAll(String name, List<Review> reviews) async {
    final box = await openBox(name: name);
    reviews.sort(_reviewSortAsc);
    final toMap = {
      for (final review in reviews) review.id: HiveMap.convert(review.toJson())
    };
    return box.putAll(toMap);
  }

  Future<List<Review>?> getAll(String name) async {
    final box = await openBox(name: name);
    final values = box.values;
    final list = values.map((e) => Review.fromJson(e.data)).toList();
    list.sort(_reviewSortAsc);
    return list;
  }
}
