import 'package:flutter/material.dart';
import 'package:social_media/components/theme_app_bar.dart';
import 'package:social_media/styles/theme_fonts.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBar(
        title: "Profile",
        actions: [
          PopupMenuButton(
            onSelected: (value) => print(value),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Text("Edit"),
                ),
                const PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text("Logout"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Image.asset(
            "assets/temp/user1.jpg",
            height: 90,
            width: 90,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Seif Nageh",
            style: ThemeFonts.subtitle,
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_rounded),
              SizedBox(
                width: 8,
              ),
              Text(
                "Egypt",
                style: ThemeFonts.bodyFirst,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "34",
                    style: ThemeFonts.subtitle,
                  ),
                  Text(
                    "Followers",
                    style: ThemeFonts.bodySecond,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "34",
                    style: ThemeFonts.subtitle,
                  ),
                  Text(
                    "Posts",
                    style: ThemeFonts.bodySecond,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "34",
                    style: ThemeFonts.subtitle,
                  ),
                  Text(
                    "Following",
                    style: ThemeFonts.bodySecond,
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            height: 16,
          ),
        ],
      ),
    );
  }
}
