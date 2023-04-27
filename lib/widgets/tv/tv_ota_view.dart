import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/view/pages/detail/tv_detail_page.dart';
import 'package:kaimovies/widgets/card_swiper_view.dart';

class OnTheAirTvsView extends StatelessWidget {
  const OnTheAirTvsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvOnTheAirCubit, TvOnTheAirState>(
      builder: (_, state) {
        if (state is SuccessTvOnTheAirState) {
          return CardSwiperView(
            title: 'TV On The Air',
            controller: CardSwiperController(),
            items: state.tvs
                .map((e) => CardSwiperModel(id: e.id, imageUrl: e.posterPath))
                .toList(),
            onTap: (item) => context
                .goNamed(TvDetailPage.name, params: {'id': item.id.toString()}),
          );
        }
        return CardSwiperView.loading(context);
      },
    );
  }
}
