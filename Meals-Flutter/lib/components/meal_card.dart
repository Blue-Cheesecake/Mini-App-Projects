import 'package:flutter/material.dart';
import 'package:meals_flutter/constants/route_paths.dart';
import 'package:meals_flutter/models/meal.dart';

class MealCard extends StatelessWidget {
  const MealCard({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  void _pressedMealCard(BuildContext context) {
    Navigator.of(context).pushNamed(RoutePaths.meal, arguments: {"meal": meal});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _pressedMealCard(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(child: Image.network(meal.imageUrl)),
            ],
          ),
        ),
      ),
    );
  }
}
