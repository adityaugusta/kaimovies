import 'package:flutter/material.dart';
import 'package:kaimovies/features/movie/screens/widgets/movie_popular_view.dart';
import 'package:kaimovies/features/tv/screens/widgets/tv_popular_view.dart';
import 'package:kaimovies/utilities/ui_utils.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 15 + MediaQuery.of(context).padding.top,
          bottom: 15,
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 52,
              backgroundColor: backgroundColor,
              child: Container(
                width: 104,
                height: 104,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(64),
                  image: DecorationImage(
                    image: Image.asset('assets/app_logo.png').image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Aditya Augusta',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Kai Movies',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
