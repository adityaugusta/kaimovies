import 'package:flutter/material.dart';
import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart'
    show getImageUrl;
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/poster_card.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.data,
    this.title,
    this.onItemTap,
  });

  final String? title;
  final List<ShowDetail> data;
  final Function(ShowDetail)? onItemTap;

  static Widget shimmer() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 125,
            height: 25,
            margin: const EdgeInsets.only(left: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: backgroundLightColor,
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
              itemBuilder: (_, __) => PosterCard.shimmer(),
              separatorBuilder: (_, __) => const SizedBox(width: 10),
            ),
          ),
        ],
      );

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
              return PosterCard(
                title: item.title,
                posterUrl: getImageUrl(item.posterUrl),
                onTap: () => onItemTap?.call(data[index]),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 10),
          ),
        ),
      ]);
}
