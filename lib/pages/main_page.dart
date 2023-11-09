import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media/pages/home_page.dart';
import 'package:social_media/pages/profile_page.dart';
import 'package:social_media/styles/theme_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final pages = [
    HomePage(),
    const Center(
      child: Text("Favorite"),
    ),
    const Center(
      child: Text("Add Post"),
    ),
    const Center(
      child: Text("Messages"),
    ),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ThemeColors.white,
        selectedItemColor: ThemeColors.black,
        unselectedItemColor: ThemeColors.disabledFont,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
            ),
          ),
          BottomNavigationBarItem(
            label: "favorite",
            icon: SvgPicture.asset("assets/icons/heart.svg"),
          ),
          const BottomNavigationBarItem(
            label: "add post",
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: "chat",
            icon: SvgPicture.asset("assets/icons/chat.svg"),
          ),
          BottomNavigationBarItem(
            label: "user",
            icon: SvgPicture.asset("assets/icons/user.svg"),
          ),
        ],
      ),
    );
  }
}
