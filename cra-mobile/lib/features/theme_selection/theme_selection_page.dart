import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ThemeSelectionPage extends StatelessWidget {
  const ThemeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                AdaptiveTheme.of(context).setLight();
              },
              child: const Text('Use Light Theme'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                AdaptiveTheme.of(context).setDark();
              },
              child: const Text('Use Dark Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
