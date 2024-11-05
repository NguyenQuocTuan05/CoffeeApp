import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/configs/app_color.dart';
import 'package:navigator_pages/coffee/apps/routers/routers_name.dart';

class DetailsPrice extends StatelessWidget {
  const DetailsPrice({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          ' \$',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.homeButton,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Text(
          '4.20',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.homeButton,
          ),
          onPressed: () {
            Navigator.popAndPushNamed(context, RoutersName.rootPage);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Payment successful'),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Buy Now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
