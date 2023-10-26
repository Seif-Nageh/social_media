import 'package:flutter/material.dart';
import 'package:social_media/pages/login_page.dart';
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
      ),
      home: LoginPage(),
    );
  }
}
