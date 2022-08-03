import 'package:meals_flutter/constants/affordability.dart';
import 'package:meals_flutter/constants/complexity.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.affordability,
      required this.complexity,
      required this.imageUrl,
      required this.duration,
      required this.ingredients,
      required this.steps,
      required this.isGlutenFree,
      required this.isVegan,
      required this.isVegetarian,
      required this.isLactoseFree});

  String get affordabilityString {
    if (affordability == Affordability.affordable) {
      return "Cheap";
    }
    if (affordability == Affordability.luxurious) {
      return "Luxurious";
    }
    return "Pricey";
  }
}
