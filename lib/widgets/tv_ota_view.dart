import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';

class OnTheAirTvsView extends StatelessWidget {
  const OnTheAirTvsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Tv On The Air',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        BlocBuilder<TvOnTheAirCubit, TvOnTheAirState>(
          builder: (_, state) {
            if (state is SuccessTvOnTheAirState) {
              final tvs = state.tvs;
              return SizedBox(
                width: double.infinity,
                height: size.height / 2 + 30,
                child: CardSwiper(
                  cardsCount: tvs.length,
                  numberOfCardsDisplayed: 3,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 15.0,
                  ),
                  cardBuilder: (context, index) {
                    final posterUrl = getImageUrl(tvs[index].posterPath ?? '');
                    return GestureDetector(
                      onTap: () => context.goNamed('tvDetail',
                          params: {'id': tvs[index].id.toString()}),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
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
                    );
                  },
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
