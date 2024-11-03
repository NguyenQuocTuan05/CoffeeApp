import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/pages/home/widgets/coffee_tabbar.dart';
import 'package:navigator_pages/coffee/pages/home/widgets/home_title.dart';

class HomeScoll extends StatelessWidget {
  const HomeScoll({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/choose.png'),
                  ),
                ),
                child: Image.asset('assets/images/filter.png'),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CoffeeTapbar(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Special for you',
            style: TextStyle(fontSize: 36),
          ),
          const SizedBox(
            height: 30,
          ),
          const HomeTitle(),
        ],
      ),
    );
  }
}
