import 'package:flutter/material.dart';
import 'package:kaimovies/utils/ui_utils.dart';

class PosterCard extends StatelessWidget {
  const PosterCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white10,
                    boxShadow: const [cardShadow],
                    image: DecorationImage(
                      image: Image.network(imageUrl).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(title, overflow: TextOverflow.ellipsis, maxLines: 2),
          ],
        ),
      );
}
