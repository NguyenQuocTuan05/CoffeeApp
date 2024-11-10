import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/apps/routers/routers_name.dart';
import 'package:navigator_pages/coffee/pages/caculator/caculator_page.dart';
import 'package:navigator_pages/coffee/pages/cart/cart_page.dart';
import 'package:navigator_pages/coffee/pages/details/details_page.dart';
import 'package:navigator_pages/coffee/pages/home/home_page.dart';
import 'package:navigator_pages/coffee/pages/root/root_page.dart';
import 'package:navigator_pages/coffee/pages/splash/splash_page.dart';
import 'package:navigator_pages/coffee/provider/provider_caculation.dart';
import 'package:navigator_pages/coffee/provider/provider_theme.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProviderTheme(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderCalculation(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, e});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderTheme>(
      builder: (_, provider, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const CaculatorPage(),
          darkTheme: ThemeData.dark(),
          theme: ThemeData.light(),
          themeMode: provider.themeMode,
          routes: {
            RoutersName.rootPage: (_) => const RootPage(),
            RoutersName.splashPage: (_) => const SplashPage(),
            RoutersName.homePage: (_) => const HomePage(),
            RoutersName.cartPage: (_) => const CartPage(),
            RoutersName.detailsPage: (_) => const DetailsPage(),
          },
        );
      },
    );
  }
}
