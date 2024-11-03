import 'package:flutter/material.dart';

class SplashTitle extends StatelessWidget {
  const SplashTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Get the cup filled of your choice to stay focused and awake. Diffrent type of coffee menu, hot lottee cappucino',
      style: TextStyle(
        color: Color.fromARGB(68, 69, 69, 182),
        fontSize: 16.2,
      ),
      textAlign: TextAlign.center,
    );
  }
}
