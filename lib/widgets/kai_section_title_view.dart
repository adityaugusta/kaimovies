import 'package:flutter/material.dart';
import 'package:kaimovies/widgets/kai_gap.dart';

class KaiSectionTitleView extends StatelessWidget {
  const KaiSectionTitleView({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
          ),
          KaiGap.s15,
          content,
        ],
      ),
    );
  }
}
