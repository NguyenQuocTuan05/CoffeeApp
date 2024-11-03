import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class HomeAppbartitle extends StatelessWidget {
  const HomeAppbartitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Find the bast',
          style:
              GoogleFonts.happyMonkey(color: AppColor.primary, fontSize: 22.85),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        Text(
          'Coffee to your taste',
          style:
              GoogleFonts.happyMonkey(color: AppColor.primary, fontSize: 22.85),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
