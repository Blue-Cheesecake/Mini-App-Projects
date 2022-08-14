import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tip_calculator/bloc/app_bloc_observer.dart';
import 'package:tip_calculator/views/home.dart';

main() {
  BlocOverrides.runZoned(() {
    runApp(const App());
  }, blocObserver: AppBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "SpaceMono",
      ),
      home: const Home(),
    );
  }
}
