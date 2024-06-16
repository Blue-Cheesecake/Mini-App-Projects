import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';
import 'home_data_state.abs.dart';

class HomeDataStateNotifier extends StateNotifier<HomeDataState> {
  HomeDataStateNotifier() : super(HomeDataState());

  void addPlace(PlaceModel model) {
    final list = [...state.places];
    list.add(model);
    state = state.copyWith(places: list);
  }
}
