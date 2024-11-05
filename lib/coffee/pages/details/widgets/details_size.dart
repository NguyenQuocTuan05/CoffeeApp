import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';

class DetailsSize extends StatefulWidget {
  const DetailsSize({super.key});

  @override
  State<DetailsSize> createState() => _DetailsSizeState();
}

class _DetailsSizeState extends State<DetailsSize> {
  int selectedContainerIndex = 0;
  final List<String> size = ['S', 'M', 'L'];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: size.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          selectedContainerIndex = index;
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: selectedContainerIndex == index
                              ? Colors.white
                              : AppColor.homeButton,
                        ),
                        shape: BoxShape.circle,
                        color: selectedContainerIndex == index
                            ? AppColor.homeButton
                            : Colors.white,
                      ),
                      child: Text(
                        size[index],
                        style: TextStyle(
                          color: selectedContainerIndex == index
                              ? Colors.white
                              : AppColor.homeButton,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
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
