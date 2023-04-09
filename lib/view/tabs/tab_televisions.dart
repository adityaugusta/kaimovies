import 'package:flutter/material.dart';
import 'package:kaimovies/widgets/tv_ota_view.dart';
import 'package:kaimovies/widgets/tv_popular_view.dart';

class TelevisionsTab extends StatefulWidget {
  const TelevisionsTab({super.key});

  @override
  State<TelevisionsTab> createState() => _TelevisionsTabState();
}

class _TelevisionsTabState extends State<TelevisionsTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            OnTheAirTvsView(),
            SizedBox(height: 40.0),
            PopularTvsView(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
