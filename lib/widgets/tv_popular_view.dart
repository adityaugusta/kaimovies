import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/widgets/card_poster.dart';

class PopularTvsView extends StatelessWidget {
  const PopularTvsView({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? 'Popular',
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15.0),
        BlocBuilder<TvPopularCubit, TvPopularState>(
          builder: (_, state) {
            if (state is SuccessTvPopularState) {
              return SizedBox(
                height: 200.0,
                width: double.infinity,
                child: ListView.separated(
                  key: const PageStorageKey<String>('tv_popular'),
                  itemCount: state.tvs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, int index) => PosterCard(
                    title: state.tvs[index].name,
                    imageUrl: getImageUrl(state.tvs[index].posterPath ?? ''),
                    onTap: () => context.goNamed('tvDetail',
                        params: {'id': state.tvs[index].id.toString()}),
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 10.0),
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
