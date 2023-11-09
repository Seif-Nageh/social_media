import 'package:flutter/material.dart';
import 'package:social_media/styles/theme_colors.dart';
import 'package:social_media/styles/theme_fonts.dart';

class ThemeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  const ThemeAppBar({super.key, required this.title, required this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: ThemeFonts.headerFirst,
      ),
      backgroundColor: ThemeColors.background,
      centerTitle: false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
