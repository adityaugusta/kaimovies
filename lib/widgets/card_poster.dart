import 'package:flutter/material.dart';

class MoviePosterCard extends StatelessWidget {
  const MoviePosterCard({
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
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ],
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
