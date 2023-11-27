import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class KaiGap extends StatelessWidget {
  const KaiGap(this.mainAxisExtent, {super.key});

  static const KaiGap s10 = KaiGap(10);
  static const KaiGap s15 = KaiGap(15);

  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return Gap(mainAxisExtent);
  }
}
