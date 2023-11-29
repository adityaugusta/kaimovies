import 'package:flutter/material.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class PosterCard extends StatelessWidget {
  const PosterCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.onTap,
  });

  static Widget loading() => SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white10,
              boxShadow: cardShadowSmall,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white10,
              boxShadow: cardShadowSmall,
            ),
          ),
        ],
      ));

  final String title;
  final String imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 150,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.white10,
                boxShadow: cardShadowSmall,
                image: DecorationImage(
                  image: Image.network(imageUrl).image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              shadows: textShadowSmall,
            ),
          ),
        ],
      ));
}
