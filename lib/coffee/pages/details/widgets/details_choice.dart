import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class DetailsChoice extends StatefulWidget {
  const DetailsChoice({super.key});

  @override
  State<DetailsChoice> createState() => _DetailsChoiceState();
}

class _DetailsChoiceState extends State<DetailsChoice> {
  int selectedContainerIndex = 0;

  final List<String> choices = [
    'White Chocolate',
    'Milk Chocolate',
    'Dark Chocolate',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: choices.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedContainerIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: selectedContainerIndex == index
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                  borderRadius: BorderRadius.circular(22),
                  color: selectedContainerIndex == index
                      ? AppColor.homeButton
                      : Colors.white,
                ),
                child: Text(
                  choices[index],
                  style: TextStyle(
                    color: selectedContainerIndex == index
                        ? Colors.white
                        : AppColor.homeButton,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
