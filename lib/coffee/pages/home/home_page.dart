import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';
import 'package:navigator_pages/coffee/pages/home/widgets/coffee_tabbar.dart';
import 'package:navigator_pages/coffee/pages/home/widgets/home_appbartitle.dart';
import 'package:navigator_pages/coffee/pages/home/widgets/home_scoll.dart';
import 'package:navigator_pages/coffee/pages/home/widgets/home_title.dart';
import 'package:navigator_pages/coffee/pages/root/root_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/category.png'),
        title: const HomeAppbartitle(),
        actions: const [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage(
              "assets/images/avatar.jpg",
            ),
          ),
          SizedBox(
            width: 31,
          ),
        ],
      ),
      body: const HomeScoll(),
    );
  }
}
