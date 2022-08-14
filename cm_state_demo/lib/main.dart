import 'package:cm_state_demo/bloc/app_bloc_observer.dart';
import 'package:cm_state_demo/bloc/counter_a/counter_a_bloc.dart';
import 'package:cm_state_demo/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main() {
  // runApp(const MyApp());

  BlocOverrides.runZoned(() {
    runApp(const MyApp());
  }, blocObserver: AppBlocObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterABloc =
        BlocProvider<CounterABloc>(create: (context) => CounterABloc());

    return MultiBlocProvider(
      providers: [
        counterABloc,
      ],
      child: const MaterialApp(
        home: Main(),
      ),
    );
  }
}
