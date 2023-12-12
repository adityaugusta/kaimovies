import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => context.pop(),
      child: const Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.white,
        shadows: textShadow,
        size: 24,
      ),
    );
  }
}
