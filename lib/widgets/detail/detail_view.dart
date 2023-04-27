import 'package:flutter/material.dart';
import 'package:kaimovies/model/review.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/widgets/button_back.dart';
import 'package:kaimovies/widgets/detail/detail_backdrop_view.dart';
import 'package:kaimovies/widgets/detail/detail_overview_view.dart';
import 'package:kaimovies/widgets/detail/detail_review_view.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    super.key,
    required this.title,
    required this.overview,
    this.posterPath,
    this.backdropPath,
    required this.reviews,
  });

  final String title;
  final String overview;
  final String? posterPath;
  final String? backdropPath;
  final List<Review> reviews;

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    final posterUrl = getImageUrl(posterPath ?? '');
    final backdropUrl = getImageUrl(backdropPath ?? '');
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: backgroundColor,
      child: Stack(
        children: [
          BackdropView(backdropUrl),
          Padding(
            padding: const EdgeInsets.only(top: 280, bottom: 15.0),
            child: Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _HeaderView(title: title, posterUrl: posterUrl),
                    const SizedBox(height: 25.0),
                    OverviewView(overview),
                    const SizedBox(height: 25.0),
                    if (reviews.isNotEmpty) ReviewsView(reviews),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            top: padding.top + 15.0,
            child: const ButtonBack(),
          ),
        ],
      ),
    );
  }
}

class _HeaderView extends StatelessWidget {
  const _HeaderView({required this.title, required this.posterUrl});

  final String title;
  final String posterUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 105.0,
          width: 75.0,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white10,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 10,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ],
            image: DecorationImage(
              image: Image.network(posterUrl).image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 15.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(title, style: const TextStyle(fontSize: 23.0))],
          ),
        ),
      ],
    );
  }
}
