import 'package:doctor_appointment_flutter/appointment/screens/welcome_screen.dart';
import 'package:doctor_appointment_flutter/core/app_route.dart';
import 'package:doctor_appointment_flutter/core/app_theme.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.routeName,
      routes: appRoute,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
