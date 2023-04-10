import 'package:flutter/material.dart';
import 'package:kaimovies/utils/ui_utils.dart';

class BackdropView extends StatelessWidget {
  const BackdropView(this.backdropUrl, {super.key});

  final String backdropUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 380,
          child: Image.network(
            backdropUrl,
            errorBuilder: (_, __, ___) =>
                Container(color: backgroundLightColor),
            fit: BoxFit.cover,
          ),
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
    );
  }
}
