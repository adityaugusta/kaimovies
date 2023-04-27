import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/view/pages/detail/movie_detail_page.dart';
import 'package:kaimovies/widgets/horizontal_list_view.dart';

class PopularTvsView extends StatelessWidget {
  const PopularTvsView({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvPopularCubit, TvPopularState>(
      builder: (_, state) {
        if (state is SuccessTvPopularState) {
          final tvs = state.tvs;
          return HorizontalListView(
            title: title ?? 'Popular',
            items: tvs
                .map((e) =>
                    HorizontalListModel(title: e.name, imageUrl: e.posterPath))
                .toList(),
            onTap: (index) => context.goNamed(MovieDetailPage.name,
                params: {'id': tvs[index].id.toString()}),
          );
        }
        return HorizontalListView.loading();
      },
    );
  }
}
