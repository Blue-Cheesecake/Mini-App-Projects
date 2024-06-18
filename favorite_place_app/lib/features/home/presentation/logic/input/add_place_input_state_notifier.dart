import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

class AddPlaceInputStateNotifier extends StateNotifier<AddPlaceInputState> {
  AddPlaceInputStateNotifier() : super(AddPlaceInputState(textEditingController: TextEditingController()));

  @override
  void dispose() {
    state.textEditingController.dispose();
    super.dispose();
  }

  void updateText(String? value) {
    state = state.copyWith(text: value);
  }
}
