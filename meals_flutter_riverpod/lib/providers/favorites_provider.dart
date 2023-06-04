import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

final favoritesProvider =
    StateNotifierProvider<FavoriteNotifier, List<Meal>>((ref) {
  return FavoriteNotifier();
});

class FavoriteNotifier extends StateNotifier<List<Meal>> {
  FavoriteNotifier() : super(<Meal>[]);

  void _showInfoMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  void toggleMealFavoriteStatus(BuildContext context, Meal m) {
    // re-assign it to notify listener
    final bool isFav = state.contains(m);

    if (isFav) {
      state = state.where((meal) => meal.id != m.id).toList();
      _showInfoMessage(context, 'Meal is no longer a favorite.');
    } else {
      state = [...state, m];
      _showInfoMessage(context, 'Marked as a favorite!');
    }
  }

  bool isFavorite(Meal meal) {
    return state.contains(meal);
  }
}
