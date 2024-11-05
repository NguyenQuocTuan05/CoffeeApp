import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';
import 'package:navigator_pages/coffee/apps/routers/routers_name.dart';
import 'package:navigator_pages/coffee/pages/root/root_page.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.primary),
      onPressed: () {
        Navigator.pushReplacementNamed(context, RoutersName.rootPage);
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          'Dive In ->',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
