import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Brightness, SystemUiOverlayStyle;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;
import 'package:kaimovies/features/detail/screens/widgets/detail_backdrop_view.dart';
import 'package:kaimovies/features/detail/screens/widgets/detail_view.dart';
import 'package:kaimovies/features/tv/screens/blocs/tv_detail_cubit.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart'
    show getImageUrl;
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/button_back.dart';

class TvDetailPage extends StatefulWidget {
  const TvDetailPage({super.key, required this.tvId});

  static const name = 'tvDetail';

  final String tvId;

  @override
  State<TvDetailPage> createState() => _TvDetailPageState();
}

class _TvDetailPageState extends State<TvDetailPage> {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: BlocProvider(
            create: (context) =>
                TvDetailCubit.create(context)..fetch(widget.tvId),
            child: BlocBuilder<TvDetailCubit, TvDetailState>(
              builder: (context, state) {
                if (state is SuccessTvDetailState) {
                  final tv = state.tv;
                  final backdropUrl = getImageUrl(state.tv.backdropUrl);
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: backgroundColor,
                    child: Stack(
                      children: [
                        if (backdropUrl != null) BackdropView(backdropUrl),
                        DetailView(tv),
                        Positioned(
                          left: 15.0,
                          top: padding.top + 15.0,
                          child: const ButtonBack(),
                        ),
                      ],
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
  }
}
