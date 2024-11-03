import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class CoffeeTapbar extends StatefulWidget {
  const CoffeeTapbar({super.key});

  @override
  State<CoffeeTapbar> createState() => _CoffeeTapbarState();
}

class _CoffeeTapbarState extends State<CoffeeTapbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Text('Espresso'),
              Text('Espresso'),
              Text('Espresso'),
              Text('Espresso'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          AspectRatio(
            aspectRatio: 3 / 2,
            child: TabBarView(
              children: [
                ListView.separated(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return AspectRatio(
                      aspectRatio: 2 / 3,
                      child: Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(31, 131, 130, 130),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(28.56),
                                          image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/cafe.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 7),
                                        decoration: const BoxDecoration(
                                          color: AppColor.primary,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(28.56),
                                            topRight: Radius.circular(28.56),
                                          ),
                                        ),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.star),
                                            Text('4.5'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Expanded(
                                  child: Text('Cafetière'),
                                ),
                                const Expanded(
                                  child: Text(
                                    'without Milk',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Expanded(
                                  child: Text(
                                    '\$4.20',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              decoration: const BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const Text('Espresso'),
                const Text('Espresso'),
                const Text('Espresso'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
