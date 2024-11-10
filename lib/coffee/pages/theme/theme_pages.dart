import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/provider/provider_theme.dart';
import 'package:provider/provider.dart';

class ThemePages extends StatefulWidget {
  const ThemePages({super.key});

  @override
  State<ThemePages> createState() => _ThemePagesState();
}

class _ThemePagesState extends State<ThemePages> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('LightTheme'),
          const SizedBox(
            height: 30,
          ),
          Consumer<ProviderTheme>(builder: (_, provider, __) {
            return Switch(
              value: provider.themeMode == ThemeMode.light,
              onChanged: (bool value) {
                provider.changeTheme();
              },
            );
          })
        ],
      ),
    );
  }
}
