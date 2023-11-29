import 'package:flutter/material.dart';
import 'package:kaimovies/utilities/context_extensions.dart';
import 'package:kaimovies/utilities/ui_utils.dart';
import 'package:kaimovies/widgets/kai_gap.dart';

class KaiPosterCardShimmer extends StatelessWidget {
  const KaiPosterCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 30,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultBorderRadius),
            ),
            color: Colors.white10,
            boxShadow: [cardShadow],
          ),
        ),
        KaiGap.s10,
        SizedBox(
          width: double.infinity,
          height: context.screenSize.height / 2 + 30,
          child: Container(
            clipBehavior: Clip.hardEdge,
            margin: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 15.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(defaultBorderRadius),
              ),
              color: Colors.white10,
              boxShadow: [cardShadow],
            ),
          ),
        ),
      ],
    );
  }
}
