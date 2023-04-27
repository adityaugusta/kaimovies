import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/tv_detail_cubit.dart';
import 'package:kaimovies/view/pages/detail/detail_page.dart';
import 'package:kaimovies/widgets/detail/detail_view.dart';

class TvDetailPage extends StatefulWidget {
  const TvDetailPage({super.key, this.tvId});

  static const name = 'tvDetail';

  final String? tvId;

  @override
  State<TvDetailPage> createState() => _TvDetailPageState();
}

class _TvDetailPageState extends State<TvDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BaseDetailPage(
      child: BlocBuilder<TvDetailCubit, TvDetailState>(
        bloc: TvDetailCubit.create(context)..fetch(widget.tvId ?? ''),
        builder: (context, state) {
          if (state is SuccessTvDetailState) {
            return DetailView(
              title: state.tv.name,
              overview: state.tv.overview,
              posterPath: state.tv.posterPath,
              backdropPath: state.tv.backdropPath,
              reviews: state.reviews,
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
