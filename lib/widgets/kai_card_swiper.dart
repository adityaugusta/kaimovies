import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:kaimovies/models/show_detail.dart';
// import 'package:kaimovies/features/utilities/poster_value_controller.dart';
import 'package:kaimovies/repositories/cache/image_cache_manager.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/context_extensions.dart';
import 'package:kaimovies/utilities/injector.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';

const double titleHeight = 30.0;
const EdgeInsets padding = EdgeInsets.symmetric(
  horizontal: 60.0,
  vertical: 15.0,
);

class KaiCardSwiper extends StatelessWidget {
  const KaiCardSwiper({
    super.key,
    this.title,
    required this.data,
    this.onItemTap,
    // this.posterValueController,
  });

  final String? title;
  final List<ShowDetail> data;
  final Function(ShowDetail)? onItemTap;

  // final PosterValueController? posterValueController;

  static Widget shimmer(BuildContext context) => Column(children: [
        Container(
          width: 150,
          height: titleHeight,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultBorderRadius),
            ),
            color: backgroundLightColor,
            boxShadow: cardShadow,
          ),
        ),
        KaiGap.s10,
        SizedBox(
          width: double.infinity,
          height: context.screenSize.height / 2 + 15.0,
          child: Container(
            clipBehavior: Clip.hardEdge,
            margin: padding,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(defaultBorderRadius),
              ),
              color: backgroundLightColor,
              boxShadow: cardShadow,
            ),
          ),
        ),
      ]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: titleHeight,
          child: Text(
            title ?? '',
            style: const TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
                shadows: textShadow),
          ),
        ),
        KaiGap.s10,
        SizedBox(
          width: double.infinity,
          height: context.screenSize.height / 2 + 15.0,
          child: CardSwiper(
            padding: padding,
            allowedSwipeDirection:
                AllowedSwipeDirection.only(left: true, right: true),
            numberOfCardsDisplayed: 3,
            cardsCount: data.length,
            cardBuilder: (context, index, _, __) {
              // if (posterValueController?.value == null) {
              //   WidgetsBinding.instance.addPostFrameCallback((_) {
              //     posterValueController?.updateValue(getPosterUrl(0));
              //   });
              // }
              final item = data[index];
              final posterUrl = getImageUrl(item.posterUrl);
              return GestureDetector(
                onTap: () => onItemTap?.call(data[index]),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius),
                    ),
                    color: backgroundLightColor,
                    boxShadow: cardShadow,
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
              );
            },
            // onSwipe: (_, currentPosition, ___) {
            //   if (currentPosition != null) {
            //     posterValueController
            //         ?.updateValue(getPosterUrl(currentPosition));
            //   }
            //   return true;
            // },
          ),
        ),
      ],
    );
  }
}
