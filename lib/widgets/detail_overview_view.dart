import 'package:flutter/material.dart';

class OverviewView extends StatelessWidget {
  const OverviewView(this.overview, {super.key});

  final String overview;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Overview',
          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        Text(overview, style: const TextStyle(fontSize: 15.0)),
      ],
    );
  }
}
