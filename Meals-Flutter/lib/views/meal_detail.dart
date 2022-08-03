import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';
import 'package:meals_flutter/models/meal.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key? key}) : super(key: key);

  Widget _index(BuildContext context, Meal meal) {
    return Center(
      child: Column(
        children: [
          Text(meal.title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return MaterialScaffold(
      widget: _index(context, meal),
      title: meal.title,
    );
  }
}
