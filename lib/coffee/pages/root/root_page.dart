import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/pages/cart/cart_page.dart';
import 'package:navigator_pages/coffee/pages/details/details_page.dart';
import 'package:navigator_pages/coffee/pages/home/home_page.dart';
import 'package:navigator_pages/coffee/pages/splash/splash_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> listPage = [
    const HomePage(),
    const CartPage(),
    const DetailsPage(),
  ];
  int indexActivePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[indexActivePage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            indexActivePage = value;
          });
        },
        currentIndex: indexActivePage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.badge), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Details'),
        ],
      ),
    );
  }
}
