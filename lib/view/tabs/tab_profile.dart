import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/blocs/tv_popular_cubit.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/widgets/movie/movie_popular_view.dart';
import 'package:kaimovies/widgets/tv/tv_popular_view.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    context.read<MoviePopularCubit>().fetch();
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
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: CircleAvatar(
                radius: 64,
                backgroundColor: backgroundColor,
                child: Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(64),
                    image: DecorationImage(
                      image: Image.asset('assets/app_logo.png').image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Aditya Augusta',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            const Text(
              'Kai Movies',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 40.0),
            const PopularMoviesView(title: 'Favorite Movies'),
            const PopularTvsView(title: "Favourite Tv's"),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
