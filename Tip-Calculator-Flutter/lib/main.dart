import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tip_calculator/bloc/app_bloc_observer.dart';
import 'package:tip_calculator/bloc/bill/bill_bloc.dart';
import 'package:tip_calculator/bloc/num_of_people/num_of_people_bloc.dart';
import 'package:tip_calculator/bloc/select_tip/select_tip_bloc.dart';
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
    final numPeopleBloc = BlocProvider(create: (context) => NumOfPeopleBloc());
    final selectTipBloc = BlocProvider(create: (context) => SelectTipBloc());

    return MultiBlocProvider(
      providers: [billBloc, numPeopleBloc, selectTipBloc],
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
                headline2: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ThemeColor.veryLightGrayish
                    // color: Colors.white,
                    ),
                headline3:
                    TextStyle(fontSize: 13, color: ThemeColor.grayishCyan),
                headline4: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                    color: ThemeColor.strongCyan),
                bodyText1: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: ThemeColor.veryDarkCyan,
                ),
                bodyText2: TextStyle(),
              )),
          home: const Home(),
        ),
      ),
    );
  }
}
