import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/features/tv/screens/pages/tv_detail_page.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class OnTheAirTvsView extends StatelessWidget {
  const OnTheAirTvsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<TvOnTheAirCubit, TvOnTheAirState>(
      builder: (_, state) {
        if (state is SuccessTvOnTheAirState) {
          final tvs = state.tvs;
          return Column(
            children: [
              const SizedBox(
                height: 30,
                child: Text(
                  'Tv On The Air',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: size.height / 2 + 30,
                child: CardSwiper(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  numberOfCardsDisplayed: 3,
                  cardsCount: tvs.length,
                  cardBuilder: (context, index, _, __) {
                    final tv = tvs[index];
                    final posterUrl = getImageUrl(tv.posterPath ?? '');
                    return GestureDetector(
                      onTap: () => context.goNamed(TvDetailPage.name,
                          pathParameters: {'id': tv.id.toString()}),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Colors.white10,
                          boxShadow: const [cardShadow],
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
            ],
          );
        }
        return Column(
          children: [
            Container(
              width: 150,
              height: 30,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white10,
                boxShadow: [cardShadow],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: size.height / 2 + 30,
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 15.0,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white10,
                  boxShadow: [cardShadow],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
