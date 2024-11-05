import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/routers/routers_name.dart';

class DetailsBackground extends StatelessWidget {
  const DetailsBackground({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Image.asset('assets/images/back.png'),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset('assets/images/heart.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
