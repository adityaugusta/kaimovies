import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_detail_cubit.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/repositories/network/utilities/ui_utils.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage(this.movieId, {super.key});

  final String? movieId;

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    final size = MediaQuery.of(context).size;
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
                MovieDetailCubit.create(context)..fetch(widget.movieId ?? ''),
            child: BlocBuilder<MovieDetailCubit, MovieDetailState>(
              builder: (context, state) {
                if (state is SuccessMovieDetailState) {
                  final posterUrl = getImageUrl(state.movie.posterPath ?? '');
                  final backdropUrl =
                      getImageUrl(state.movie.backdropPath ?? '');
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: backgroundColor,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 380,
                              child:
                                  Image.network(backdropUrl, fit: BoxFit.cover),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: backgroundColor,
                                    spreadRadius: 180,
                                    blurRadius: 180,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 280, bottom: 15.0),
                          child: Expanded(
                            child: SingleChildScrollView(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 105.0,
                                        width: 75.0,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
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
                                            image: Image.network(
                                              posterUrl,
                                            ).image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 15.0),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              state.movie.title,
                                              style: const TextStyle(
                                                fontSize: 23.0,
                                                // fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 25.0),
                                  const Text(
                                    'Overview',
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10.0),
                                  Text(
                                    state.movie.overview,
                                    style: const TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  const Text(
                                    'Reviews',
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10.0),
                                  SizedBox(
                                    height: 140,
                                    width: double.infinity,
                                    child: ListView.separated(
                                      itemCount: state.reviews.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (_, int index) {
                                        final avatarUrl = getImageUrl(state
                                                .reviews[index]
                                                .authorDetails
                                                .avatarPath ??
                                            '');
                                        return Container(
                                          color: Colors.black26,
                                          width: size.width * 3 / 4,
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                radius: 24,
                                                backgroundColor:
                                                    backgroundColor,
                                                child: Container(
                                                  width: 48,
                                                  height: 48,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            48),
                                                    image: DecorationImage(
                                                      image: Image.network(
                                                              avatarUrl)
                                                          .image,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 15.0),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      state.reviews[index]
                                                          .authorDetails.name,
                                                      style: const TextStyle(
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                        height: 10.0),
                                                    Text(
                                                      state.reviews[index]
                                                          .content,
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        fontSize: 12.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const SizedBox(width: 15.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15.0,
                          top: padding.top + 15.0,
                          child: GestureDetector(
                            onTap: () => context.pop(),
                            child: Container(
                              padding: const EdgeInsets.all(7.5),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                color: Colors.black45,
                              ),
                              child: const Icon(Icons.arrow_back_ios_rounded,
                                  color: Colors.white, size: 20.0),
                            ),
                          ),
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
