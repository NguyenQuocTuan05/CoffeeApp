import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/routers/routers_name.dart';
import 'package:navigator_pages/coffee/pages/cart/cart_page.dart';
import 'package:navigator_pages/coffee/pages/details/details_page.dart';
import 'package:navigator_pages/coffee/pages/home/home_page.dart';
import 'package:navigator_pages/coffee/pages/root/root_page.dart';
import 'package:navigator_pages/coffee/pages/splash/splash_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, e});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      routes: {
        RoutersName.rootPage: (_) => const RootPage(),
        RoutersName.splashPage: (_) => const SplashPage(),
        RoutersName.homePage: (_) => const HomePage(),
        RoutersName.cartPage: (_) => const CartPage(),
        RoutersName.detailsPage: (_) => const DetailsPage(),
      },
    );
  }
}
