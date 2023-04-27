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
        height: 200,
        child: Column(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 150,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: CardUtils.border,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.white10,
                  boxShadow: const [CardUtils.shadowSmall],
                  image: DecorationImage(
                    image: Image.network(imageUrl).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 7),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );
}
