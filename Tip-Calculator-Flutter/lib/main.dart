import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tip_calculator/bloc/app_bloc_observer.dart';
import 'package:tip_calculator/bloc/bill/bill_bloc.dart';
import 'package:tip_calculator/utils/constants.dart';
import 'package:tip_calculator/views/home/home.dart';

main() {
  BlocOverrides.runZoned(
        () {
      runApp(const App());
    },
    blocObserver: AppBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final billBloc = BlocProvider(create: (context) => BillBloc());

    return MultiBlocProvider(
      providers: [billBloc],
      child: GestureDetector(
        child: MaterialApp(
          theme: ThemeData(
              fontFamily: "SpaceMono",
              textTheme: TextTheme(
                headline1: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: ThemeColor.darkGrayishCyan,
                ),
                headline2: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  // color: Colors.white,
                ),
                bodyText1: TextStyle(),
                bodyText2: TextStyle(),
              )),
          home: const Home(),
        ),
      ),
    );
  }
}
