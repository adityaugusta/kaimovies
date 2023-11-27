import 'package:flutter/material.dart';
import 'package:kaimovies/features/review/models/review.dart';
import 'package:kaimovies/repositories/network/utilities/api_utils.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';
import 'package:kaimovies/widgets/kai_section_title_view.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView(this.reviews, {super.key});

  final List<Review> reviews;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return KaiSectionTitleView(
      title: 'Reviews',
      content: SizedBox(
        height: 160,
        width: double.infinity,
        child: ListView.separated(
          itemCount: reviews.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final avatarUrl =
                getImageUrl(reviews[index].authorDetails.avatarPath ?? '');
            final name = reviews[index].authorDetails.name.isEmpty
                ? 'User'
                : reviews[index].authorDetails.name;
            return Container(
              color: Colors.black26,
              width: size.width * 3 / 4,
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: backgroundColor,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        image: DecorationImage(
                          image: Image.network(avatarUrl).image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  KaiGap.s15,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        KaiGap.s10,
                        Text(
                          reviews[index].content,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12.0),
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
    );
  }
}
