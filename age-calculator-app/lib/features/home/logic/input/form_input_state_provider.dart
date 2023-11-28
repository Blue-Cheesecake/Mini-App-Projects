import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';

final formInputStateProvider = StateNotifierProvider<FormInputStateNotifier, FormInputState>((ref) {
  return FormInputStateNotifier();
});
