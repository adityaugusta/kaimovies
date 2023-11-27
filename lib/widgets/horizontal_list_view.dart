import 'package:flutter/material.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/tv/models/tv.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/card_poster.dart';

class HorizontalListView<T> extends StatelessWidget {
  const HorizontalListView({
    super.key,
    this.title,
    required this.data,
    this.onItemTap,
  });

  final String? title;
  final List<T> data;
  final Function(T)? onItemTap;

  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 25,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title ?? '',
            style: const TextStyle(
              shadows: textShadowSmall,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ListView.separated(
            key: key,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            itemCount: data.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final item = data[index];
              late String title;
              late String posterPath;
              if (item is Movie) {
                title = item.title;
                posterPath = item.posterPath ?? '';
              }
              if (item is Tv) {
                title = item.name;
                posterPath = item.posterPath ?? '';
              }
              return PosterCard(
                title: title,
                imageUrl: getImageUrl(posterPath),
                onTap: () => onItemTap?.call(data[index]),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 10),
          ),
        ),
      ]);

  static Widget loading() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 125,
            height: 25,
            margin: const EdgeInsets.only(left: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white10,
              boxShadow: cardShadowSmall,
            ),
          ),
          SizedBox(
            height: 220,
            width: double.infinity,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) => PosterCard.loading(),
              separatorBuilder: (_, __) => const SizedBox(width: 10),
            ),
          ),
        ],
      );
}
