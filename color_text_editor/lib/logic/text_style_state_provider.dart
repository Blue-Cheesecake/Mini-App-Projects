import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logic.dart';

final textStyleStateProvider = StateNotifierProvider<TextStyleStateNotifier, TextStyleState>((ref) {
  return TextStyleStateNotifier();
});
