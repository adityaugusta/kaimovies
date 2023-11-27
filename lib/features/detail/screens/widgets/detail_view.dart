import 'package:flutter/material.dart';
import 'package:kaimovies/features/detail/screens/widgets/detail_header_view.dart';
import 'package:kaimovies/features/detail/screens/widgets/detail_overview_view.dart';
import 'package:kaimovies/features/detail/screens/widgets/detail_review_view.dart';
import 'package:kaimovies/features/review/models/review.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    super.key,
    required this.title,
    required this.overview,
    required this.posterUrl,
    required this.reviews,
  });

  final String title;
  final String overview;
  final String posterUrl;
  final List<Review> reviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 280, bottom: 15.0),
      child: Expanded(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderView(title: title, posterUrl: posterUrl),
              const SizedBox(height: 25.0),
              OverviewView(overview),
              const SizedBox(height: 20.0),
              if (reviews.isNotEmpty) ReviewsView(reviews),
            ],
          ),
        ),
      ),
    );
  }
}
