import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/features/tv/screens/widgets/tv_ota_view.dart';
import 'package:kaimovies/features/tv/screens/widgets/tv_popular_view.dart';

class TelevisionsTab extends StatefulWidget {
  const TelevisionsTab({super.key});

  @override
  State<TelevisionsTab> createState() => _TelevisionsTabState();
}

class _TelevisionsTabState extends State<TelevisionsTab>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    context.read<TvOnTheAirCubit>().fetch();
    context.read<TvPopularCubit>().fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 15 + MediaQuery.of(context).padding.top,
          bottom: 15,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OnTheAirTvsView(),
            SizedBox(height: 40),
            PopularTvsView(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
