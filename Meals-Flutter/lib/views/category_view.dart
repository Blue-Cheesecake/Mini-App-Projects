import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';
import 'package:meals_flutter/components/meal_card.dart';
import 'package:meals_flutter/models/meal.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key,
    required this.availableMeals,
  }) : super(key: key);

  final List<Meal> availableMeals;

  Widget _index(BuildContext context) {
    final route =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final id = route['id'] as String;
    final mealsList = availableMeals.where((element) {
      return element.categories.contains(id);
    }).toList();

    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: mealsList.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
              child: MealCard(meal: mealsList[index]),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    return MaterialScaffold(
      widget: _index(context),
      title: route["title"] as String,
    );
  }
}
