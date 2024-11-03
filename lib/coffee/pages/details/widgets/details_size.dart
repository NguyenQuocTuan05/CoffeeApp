import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class DetailsSize extends StatefulWidget {
  const DetailsSize({super.key});

  @override
  State<DetailsSize> createState() => _DetailsSizeState();
}

class _DetailsSizeState extends State<DetailsSize> {
  int selectedContainerIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = 0;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: selectedContainerIndex == 0
                    ? Colors.white
                    : AppColor.homeButton,
              ),
              shape: BoxShape.circle,
              color: selectedContainerIndex == 0
                  ? AppColor.homeButton
                  : Colors.white,
            ),
            child: Text(
              'S',
              style: TextStyle(
                color: selectedContainerIndex == 0
                    ? Colors.white
                    : AppColor.homeButton,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: selectedContainerIndex == 1
                    ? Colors.white
                    : AppColor.homeButton,
              ),
              shape: BoxShape.circle,
              color: selectedContainerIndex == 1
                  ? AppColor.homeButton
                  : Colors.white,
            ),
            child: Text(
              'M',
              style: TextStyle(
                color: selectedContainerIndex == 1
                    ? Colors.white
                    : AppColor.homeButton,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedContainerIndex = 2;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: selectedContainerIndex == 2
                    ? Colors.white
                    : AppColor.homeButton,
              ),
              shape: BoxShape.circle,
              color: selectedContainerIndex == 2
                  ? AppColor.homeButton
                  : Colors.white,
            ),
            child: Text(
              'L',
              style: TextStyle(
                color: selectedContainerIndex == 2
                    ? Colors.white
                    : AppColor.homeButton,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.remove_circle,
          color: AppColor.homeButton,
          size: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '1',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Icon(
          Icons.add_circle,
          color: AppColor.homeButton,
          size: 40,
        ),
      ],
    );
  }
}
