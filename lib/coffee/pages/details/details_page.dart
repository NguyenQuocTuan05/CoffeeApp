import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';
import 'package:navigator_pages/coffee/pages/details/widgets/details_background.dart';
import 'package:navigator_pages/coffee/pages/details/widgets/details_choice.dart';
import 'package:navigator_pages/coffee/pages/details/widgets/details_price.dart';
import 'package:navigator_pages/coffee/pages/details/widgets/details_size.dart';
import 'package:navigator_pages/coffee/pages/details/widgets/details_title.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  DetailsBackground(),
                  DetailsTitle(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Driscription ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Coffee is a beloved beverage enjoyed by millions worldwide for its rich flavor, invigorating aroma, and stimulating properties. ',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Choice of Chocolate',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DetailsChoice(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Size',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              DetailsSize(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Price',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DetailsPrice(),
            ],
          ),
        ),
      ),
    );
  }
}
