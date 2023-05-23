import 'package:doctor_appointment_flutter/appointment/screens/home_screen.dart';
import 'package:doctor_appointment_flutter/appointment/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

final appRoute = <String, Widget Function(BuildContext)>{
  WelcomeScreen.routeName: (BuildContext context) => const WelcomeScreen(),
  HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
};
