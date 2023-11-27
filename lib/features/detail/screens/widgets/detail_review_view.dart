import 'package:flutter/material.dart';
import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView(this.reviews, {super.key});

  final List<Review> reviews;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reviews',
          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 140,
          width: double.infinity,
          child: ListView.separated(
            itemCount: reviews.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) {
              final avatarUrl =
                  getImageUrl(reviews[index].authorDetails.avatarPath ?? '');
              return Container(
                color: Colors.black26,
                width: size.width * 3 / 4,
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: backgroundColor,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          image: DecorationImage(
                            image: Image.network(avatarUrl).image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            reviews[index].authorDetails.name,
                            style: const TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            reviews[index].content,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
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
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 15.0),
          ),
        ),
      ],
    );
  }
}
