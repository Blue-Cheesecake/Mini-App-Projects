import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';
import 'package:meals_flutter/views/category_view.dart';
import 'package:meals_flutter/views/filtersView.dart';
import 'package:meals_flutter/views/meal_detail.dart';

import 'constants/route_paths.dart';

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
              color: Colors.black,
              fontSize: 16,
            ),
            bodyText2: const TextStyle(color: Colors.blueGrey, fontSize: 17),
            headline4: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 28,
              fontWeight: FontWeight.w700,
              fontFamily: "RobotoCondensed",
            ),
            headline3: const TextStyle(
              color: Color.fromRGBO(1, 1, 1, 1),
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: "RobotoCondensed",
            )),
      ),
      // home: const MaterialScaffold(),
      initialRoute: RoutePaths.initial,
      routes: {
        RoutePaths.initial: (_) => const MaterialScaffold(),
        RoutePaths.categoryMeal: (_) => CategoryView(),
        RoutePaths.meal: (_) => const MealDetail(),
        RoutePaths.filters: (_) => const FiltersView(),
        // RoutePaths.favorites: (_) => const Favorites(),
      },
    );
  }
}
