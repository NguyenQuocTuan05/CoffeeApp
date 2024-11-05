import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';
import 'package:navigator_pages/coffee/apps/routers/routers_name.dart';
import 'package:navigator_pages/coffee/pages/splash/widgets/splash_button.dart';
import 'package:navigator_pages/coffee/pages/splash/widgets/splash_title.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splash,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 74.7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/coffee.png'),
              const SizedBox(
                height: 164,
              ),
              const Text(
                'Stay Focused',
                style: TextStyle(
                    color: AppColor.textName,
                    fontSize: 27.78,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const SplashTitle(),
              const SizedBox(
                height: 60,
              ),
              const SplashButton(),
            ],
          ),
        ),
      ),
    );
  }
}
