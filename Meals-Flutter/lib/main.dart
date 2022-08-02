import 'package:flutter/material.dart';
import 'package:meals_flutter/constants/route_paths.dart';
import 'package:meals_flutter/views/categories.dart';
import 'package:meals_flutter/views/category_view.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(66, 194, 255, 1),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color.fromRGBO(133, 244, 255, 1)),
        canvasColor: const Color.fromRGBO(239, 255, 253, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(66, 194, 255, 0.8),
            ),
            bodyText2: const TextStyle(color: Color.fromRGBO(133, 244, 255, 1)),
            headline3: const TextStyle(
              color: Color.fromRGBO(1, 1, 1, 1),
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: "RobotoCondensed",
            )),
      ),
      initialRoute: RoutePaths.initial,
      routes: {
        RoutePaths.initial: (_) => const Categories(),
        RoutePaths.categoryMeal: (context) => const CategoryView(),
      },
    );
  }
}
