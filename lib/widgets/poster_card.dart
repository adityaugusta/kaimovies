import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kaimovies/repositories/cache/image_cache_manager.dart';
import 'package:kaimovies/utilities/injector.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class PosterCard extends StatelessWidget {
  const PosterCard({
    super.key,
    required this.title,
    this.posterUrl,
    this.onTap,
  });

  static Widget shimmer() => SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: backgroundLightColor,
              boxShadow: cardShadowSmall,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: backgroundLightColor,
              boxShadow: cardShadowSmall,
            ),
          ),
        ],
      ));

  final String title;
  final String? posterUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final posterUrl = this.posterUrl;
    return SizedBox(
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
                color: backgroundLightColor,
                boxShadow: cardShadowSmall,
                image: posterUrl != null ? DecorationImage(
                  image: CachedNetworkImageProvider(
                    posterUrl,
                    cacheKey: posterUrl,
                    cacheManager: injector.get<ImageUrlCacheManager>(),
                  ),
                  fit: BoxFit.cover,
                ) : null,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(shadows: textShadowSmall),
          ),
        ],
      ));
  }
}
