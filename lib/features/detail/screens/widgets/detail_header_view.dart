import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key, required this.title, required this.posterUrl});

  final String title;
  final String posterUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 105.0,
          width: 75.0,
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
              image: Image.network(posterUrl).image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 15.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(title, style: const TextStyle(fontSize: 23.0))],
          ),
        ),
      ],
    );
  }
}
