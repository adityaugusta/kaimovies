import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class KaiGap extends StatelessWidget {
  const KaiGap(this.mainAxisExtent, {super.key});

  static const KaiGap s5 = KaiGap(5);
  static const KaiGap s10 = KaiGap(10);
  static const KaiGap s15 = KaiGap(15);
  static const KaiGap s20 = KaiGap(20);
  static const KaiGap s25 = KaiGap(25);
  static const KaiGap s30 = KaiGap(30);
  static const KaiGap s40 = KaiGap(40);

  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return Gap(mainAxisExtent);
  }
}
