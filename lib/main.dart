import 'package:flutter/material.dart';
import 'package:social_media/pages/login_page.dart';
import 'package:social_media/pages/main_page.dart';
import 'package:social_media/styles/theme_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Urbanist",
        scaffoldBackgroundColor: ThemeColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/main": (context) => const MainPage(),
      },
    );
  }
}
