import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/features/tv/screens/pages/tv_detail_page.dart';
import 'package:kaimovies/widgets/horizontal_list_view.dart';

class PopularTvsView extends StatelessWidget {
  const PopularTvsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TvPopularCubit, TvPopularState>(
      builder: (_, state) {
        if (state is SuccessTvPopularState) {
          return HorizontalListView(
            key: const PageStorageKey<String>('tv_popular'),
            title: 'Popular',
            data: state.tvs,
            onItemTap: (tv) => context.goNamed(TvDetailPage.name,
                pathParameters: {'id': tv.id.toString()}),
          );
        }
        return HorizontalListView.shimmer();
      },
    );
  }
}
