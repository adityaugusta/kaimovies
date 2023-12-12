import 'package:flutter/material.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class BackdropView extends StatelessWidget {
  const BackdropView(this.backdropUrl, {super.key});

  final String backdropUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          child: Image.network(
            backdropUrl,
            errorBuilder: (_, __, ___) =>
                Container(color: backgroundLightColor),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                backgroundColor,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
