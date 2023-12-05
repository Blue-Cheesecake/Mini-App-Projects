import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'config/config.dart';
import 'features/login/login_page.dart';

class AppWD extends StatelessWidget {
  const AppWD({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: CRATheme.getLightTheme(),
      dark: CRATheme.getDarkTheme(),
      initial: AdaptiveThemeMode.light,
      builder: (light, dark) {
        return MaterialApp(
          theme: light,
          darkTheme: dark,
          home: const LoginPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
