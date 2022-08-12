import 'package:flutter/material.dart';
import 'package:meals_flutter/view_models/meals_manager.dart';
import 'package:meals_flutter/views/category_view.dart';
import 'package:meals_flutter/views/filtersView.dart';
import 'package:meals_flutter/views/meal_detail.dart';

import 'common/material_scaffold.dart';
import 'constants/route_paths.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  var _filters = {
    "gluten": false,
    "vegetarian": false,
    "vegan": false,
    "lactose": false,
  };

  var _availableMeals = MealsManager().meals;

  void _setFilters(Map<String, bool> newFilters) {
    setState(() {
      _filters = newFilters;

      _availableMeals = _availableMeals.where((element) {
        return element.isGlutenFree == newFilters["gluten"]! &&
            element.isVegetarian == newFilters["vegetarian"]! &&
            element.isVegan == newFilters["vegan"]! &&
            element.isLactoseFree == newFilters["lactose"]!;
      }).toList();
    });
  }

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
        RoutePaths.categoryMeal: (_) => CategoryView(
              availableMeals: _availableMeals,
            ),
        RoutePaths.meal: (_) => const MealDetail(),
        RoutePaths.filters: (_) => FiltersView(
              setFilters: _setFilters,
              filters: _filters,
            ),
        // RoutePaths.favorites: (_) => const Favorites(),
      },
    );
  }
}
