import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/model/movie.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/view/pages/detail/movie_detail_page.dart';

class CardSwiperView extends StatelessWidget {
  const CardSwiperView({
    super.key,
    required this.controller,
    required this.title,
    required this.items,
    required this.onTap,
  });

  final String title;
  final CardSwiperController controller;
  final List<CardSwiperModel> items;
  final Function(CardSwiperModel)? onTap;

  static Widget loading(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 150,
            height: 25,
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white10,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            children: [
              Container(
                width: 15,
                height: 20,
                margin: const EdgeInsets.only(bottom: 22),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.white10,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: size.height * 1 / 2 + 25,
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white10,
                    ),
                  ),
                ),
              ),
              Container(
                width: 15,
                height: 20,
                margin: const EdgeInsets.only(bottom: 22),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.white10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => controller.swipeLeft(),
                child: const Icon(Icons.arrow_back_ios_rounded,
                    color: Colors.white, size: 15.0),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: size.height * 1 / 2,
                  padding: const EdgeInsets.all(15),
                  child: CardSwiper(
                    controller: controller,
                    cardsCount: items.length,
                    numberOfCardsDisplayed: 3,
                    padding: EdgeInsets.zero,
                    cardBuilder: (context, index) {
                      final item = items[index];
                      final posterUrl = getImageUrl(item.imageUrl ?? '');
                      return GestureDetector(
                        onTap: () => onTap?.call(item),
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            border: CardUtils.border,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.white10,
                            boxShadow: const [CardUtils.shadow],
                            image: DecorationImage(
                              image: Image.network(posterUrl).image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controller.swipeRight(),
                child: const Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.white, size: 15.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardSwiperModel {
  CardSwiperModel({required this.id, this.imageUrl});

  final int id;
  final String? imageUrl;
}
