import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

final addPlaceInputStateProvider =
    StateNotifierProvider.autoDispose<AddPlaceInputStateNotifier, AddPlaceInputState>((ref) {
  return AddPlaceInputStateNotifier();
});
