import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

class TextStyleStateNotifier extends StateNotifier<TextStyleState> {
  TextStyleStateNotifier()
      : super(TextStyleState(
          color: Colors.black, // Default Color
        ));

  void updateColor(Color value) {
    state = state.copyWith(color: value);
  }
}
