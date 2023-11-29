import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/features/tv/screens/pages/tv_detail_page.dart';
import 'package:kaimovies/features/utilities/poster_value_controller.dart';
import 'package:kaimovies/widgets/kai_card_swiper.dart';
import 'package:kaimovies/widgets/kai_poster_card_shimmer.dart';

class OnTheAirTvsView extends StatelessWidget {
  const OnTheAirTvsView({super.key, required this.backgroundImage});

  final PosterValueController backgroundImage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvOnTheAirCubit, TvOnTheAirState>(
      builder: (_, state) {
        if (state is SuccessTvOnTheAirState) {
          return KaiCardSwiper(
            title: 'Tv On The Air',
            data: state.tvs,
            backgroundImage: backgroundImage,
            onItemTap: (tv) => context.goNamed(TvDetailPage.name,
                pathParameters: {'id': tv.id.toString()}),
          );
        }
        return const KaiPosterCardShimmer();
      },
    );
  }
}
