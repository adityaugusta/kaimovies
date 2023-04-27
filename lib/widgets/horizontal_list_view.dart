import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/blocs/movie_popular_cubit.dart';
import 'package:kaimovies/model/movie.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utils/ui_utils.dart';
import 'package:kaimovies/view/pages/detail/movie_detail_page.dart';
import 'package:kaimovies/widgets/card_poster.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.title,
    required this.items,
    this.onTap,
  });

  static Widget loading() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 20,
            margin: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white10,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, int index) {
                return SizedBox(
                  width: 100,
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white10,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Container(
                        height: 20,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white10,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 10.0),
            ),
          ),
        ],
      );

  final String title;
  final List<HorizontalListModel> items;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 220,
          child: ListView.separated(
            key: PageStorageKey<String>(title),
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (_, index) {
              final item = items[index];
              return PosterCard(
                title: item.title,
                imageUrl: getImageUrl(item.imageUrl ?? ''),
                onTap: () => onTap?.call(index),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 10.0),
          ),
        ),
      ],
    );
  }
}

class HorizontalListModel {
  HorizontalListModel({required this.title, this.imageUrl});

  final String title;
  final String? imageUrl;
}
