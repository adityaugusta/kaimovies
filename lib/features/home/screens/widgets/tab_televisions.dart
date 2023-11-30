import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_ota_cubit.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/features/tv/screens/widgets/tv_ota_view.dart';
import 'package:kaimovies/features/tv/screens/widgets/tv_popular_view.dart';
import 'package:kaimovies/features/utilities/poster_value_controller.dart';
import 'package:kaimovies/utilities/context_extensions.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';

class TelevisionsTab extends StatefulWidget {
  const TelevisionsTab({super.key});

  @override
  State<TelevisionsTab> createState() => _TelevisionsTabState();
}

class _TelevisionsTabState extends State<TelevisionsTab>
    with AutomaticKeepAliveClientMixin {
  final _posterValueController = PosterValueController(null);

  @override
  void initState() {
    context.read<TvOnTheAirCubit>().fetch();
    context.read<TvPopularCubit>().fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ValueListenableBuilder(
      valueListenable: _posterValueController,
      builder: (context, value, _) {
        // final image = value;
        return SizedBox/*Container*/(
          width: double.infinity,
          height: double.infinity,
          // decoration: BoxDecoration(
          //   image: image != null
          //       ? DecorationImage(image: image, fit: BoxFit.cover)
          //       : null,
          // ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(gradient: backgroundGradient),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 15 + context.screenPadding.top,
                  bottom: 15 + context.screenPadding.bottom,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OnTheAirTvsView(
                      // posterValueController: _posterValueController,
                    ),
                    KaiGap.s40,
                    PopularTvsView(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
