import 'package:flutter/material.dart';
import 'package:social_media/styles/theme_fonts.dart';

class MainPost extends StatelessWidget {
  const MainPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/temp/user1.jpg",
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 16,
            ),
            const Column(
              children: [
                Text(
                  "Seif Nageh",
                  style: ThemeFonts.bodyFirst,
                ),
                Text("1 hour ago"),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Image.asset(
          "assets/temp/user1.jpg",
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.favorite),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("9"),
            ),
            Icon(Icons.comment_bank_rounded),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text("14"),
            ),
          ],
        )
      ],
    );
  }
}
