import 'package:flutter/material.dart';
import 'package:kaimovies/widgets/section_title_view.dart';

class OverviewView extends StatelessWidget {
  const OverviewView(this.overview, {super.key});

  final String overview;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SectionTitleView(
        title: 'Overview',
        content: Text(
          overview,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 15.0, height: 1.1),
        ),
      ),
    );
  }
}
