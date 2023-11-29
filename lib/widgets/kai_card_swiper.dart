import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:kaimovies/features/movie/models/movie.dart';
import 'package:kaimovies/features/tv/models/tv.dart';
import 'package:kaimovies/features/utilities/poster_value_controller.dart';
import 'package:kaimovies/repositories/services/utilities/api_utils.dart';
import 'package:kaimovies/utilities/context_extensions.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';

class KaiCardSwiper<T> extends StatelessWidget {
  const KaiCardSwiper({
    super.key,
    this.title,
    required this.data,
    this.onItemTap,
    required this.backgroundImage,
  });

  final String? title;
  final List<T> data;
  final Function(T)? onItemTap;
  final PosterValueController backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Text(
            title ?? '',
            style: const TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, shadows: textShadow),
          ),
        ),
        KaiGap.s10,
        SizedBox(
          width: double.infinity,
          height: context.screenSize.height / 2 + 30,
          child: CardSwiper(
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 15.0,
            ),
            numberOfCardsDisplayed: 3,
            cardsCount: data.length,
            cardBuilder: (context, index, _, __) {
              final poster = Image.network(getPosterUrl(index));
              if (backgroundImage.value == null) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  backgroundImage.updateValue(poster);
                });
              }
              return GestureDetector(
                onTap: () => onItemTap?.call(data[index]),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius),
                    ),
                    color: Colors.white10,
                    boxShadow: const [cardShadow],
                    image: DecorationImage(
                      image: poster.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            onSwipe: (_, currentPosition, ___) {
              if (currentPosition != null) {
                final poster = Image.network(getPosterUrl(currentPosition));
                backgroundImage.updateValue(poster);
              }
              return true;
            },
          ),
        ),
      ],
    );
  }

  String getPosterUrl(int index) {
    final item = data[index];
    final posterPath = item is Movie
        ? item.posterPath ?? ''
        : item is Tv
            ? item.posterPath ?? ''
            : '';
    return getImageUrl(posterPath);
  }
}
