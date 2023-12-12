import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kaimovies/models/show_detail.dart';
import 'package:kaimovies/repositories/cache/image_cache_manager.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/injector.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';

class HeaderView extends StatelessWidget {
  const HeaderView(this.showDetail, {super.key});

  final ShowDetail showDetail;

  @override
  Widget build(BuildContext context) {
    // final _tagline = movie.tagline;
    final posterUrl = getImageUrl(showDetail.posterUrl);
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160.0,
                width: 114.0,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white10,
                  boxShadow: cardShadowSmall,
                  image: posterUrl != null
                      ? DecorationImage(
                          image: CachedNetworkImageProvider(
                            posterUrl,
                            cacheKey: posterUrl,
                            cacheManager: injector.get<ImageUrlCacheManager>(),
                          ),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              ),
              KaiGap.s15,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      showDetail.title,
                      style: const TextStyle(
                          shadows: textShadowSmall,
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                          color: Colors.white),
                    ),
                    // if (_tagline != null)
                    //   Padding(
                    //     padding: const EdgeInsets.only(top: 5.0),
                    //     child: Text(
                    //       _tagline,
                    //       style: const TextStyle(
                    //           shadows: textShadowSmall,
                    //           fontSize: 15.0,
                    //           height: 1.1,
                    //           color: Colors.white70),
                    //     ),
                    //   ),
                    KaiGap.s10,
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: Colors.amberAccent,
                          size: 18,
                        ),
                        KaiGap.s5,
                        Text(
                          showDetail.voteAverage.toStringAsFixed(1),
                          style: const TextStyle(
                              shadows: textShadowSmall,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text(
                          ' / 10',
                          style: TextStyle(
                              shadows: textShadowSmall,
                              fontSize: 12.0,
                              color: Colors.white70),
                        ),
                        KaiGap.s5,
                        Text(
                          '(${showDetail.voteCount} reviews)',
                          style: const TextStyle(
                              shadows: textShadowSmall,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    KaiGap.s10,
                    SingleChildScrollView(
                      padding: EdgeInsets.zero,
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.transparent),
                        child: Wrap(
                          spacing: 5.0,
                          runSpacing: 0,
                          children: [
                            for (var i = 0; i < showDetail.genres.length; i++)
                              Chip(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.white38),
                                  borderRadius:
                                      BorderRadius.circular(defaultBorderRadius),
                                ),
                                labelPadding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                label: Text(
                                  showDetail.genres[i].name,
                                  style: const TextStyle(
                                      fontSize: 11.0,
                                      shadows: textShadowSmall,
                                      color: Colors.white),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          KaiGap.s15,
        ],
      ),
    );
  }
}
