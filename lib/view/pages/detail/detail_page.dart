import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaimovies/utils/ui_utils.dart';

class BaseDetailPage extends StatefulWidget {
  const BaseDetailPage({super.key, required this.child});

  final Widget child;

  @override
  State<BaseDetailPage> createState() => _BaseDetailPageState();
}

class _BaseDetailPageState extends State<BaseDetailPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(top: false, child: Scaffold(body: widget.child)),
    );
  }
}
