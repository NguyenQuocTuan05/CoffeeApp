import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class DetailsChoice extends StatefulWidget {
  const DetailsChoice({super.key});

  @override
  State<DetailsChoice> createState() => _DetailsChoiceState();
}

class _DetailsChoiceState extends State<DetailsChoice> {
  int selectedContainerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainerIndex = 0;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: selectedContainerIndex == 0
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  color: selectedContainerIndex == 0
                      ? AppColor.homeButton
                      : Colors.white,
                ),
                child: Text(
                  'White Chocolate',
                  style: TextStyle(
                    color: selectedContainerIndex == 0
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainerIndex = 1;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: selectedContainerIndex == 1
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  color: selectedContainerIndex == 1
                      ? AppColor.homeButton
                      : Colors.white,
                ),
                child: Text(
                  'Milk Chocolate',
                  style: TextStyle(
                    color: selectedContainerIndex == 1
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainerIndex = 2;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: selectedContainerIndex == 2
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  color: selectedContainerIndex == 2
                      ? AppColor.homeButton
                      : Colors.white,
                ),
                child: Text(
                  'Dark Chocolate',
                  style: TextStyle(
                    color: selectedContainerIndex == 2
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
