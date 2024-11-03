import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: AppColor.primary,
      ),
      child: Row(
        children: [
          Image.asset('assets/images/cafeleaves.png'),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: Text(
              'Specially mixed andbrewd within you must try ',
              style: TextStyle(fontSize: 20, color: AppColor.splash),
            ),
          ),
        ],
      ),
    );
  }
}
