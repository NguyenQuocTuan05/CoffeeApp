import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 13,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(83, 51, 20, 2),
              Color.fromARGB(83, 70, 52, 3),
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Text(
                  'Espresso ',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'with chocolate',
                  style: TextStyle(color: Colors.white, fontSize: 8),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColor.deleteButton,
                    ),
                    Text(
                      '4.8 (6,900)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/beans.png'),
                        const Text(
                          'Coffee',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/drop.png'),
                        const Text(
                          'Chocolate',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Medium Roasted',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
