import 'package:flutter/material.dart';
import 'package:social_media/components/main_post.dart';
import 'package:social_media/components/theme_app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> usersPosts = [];

  @override
  Widget build(BuildContext context) {
    posts();
    return Scaffold(
      appBar: ThemeAppBar(
        title: "5 Minutes",
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return usersPosts[index];
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 24,
              );
            },
            itemCount: usersPosts.length),
      ),
    );
  }

  posts() {
    usersPosts = [];
    for (int i = 0; i < 1; i++) {
      usersPosts.add(const MainPost());
    }
  }
}
