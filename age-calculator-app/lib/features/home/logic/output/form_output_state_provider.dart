import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';

final formOutputStateProvider = StateNotifierProvider<FormOutputStateNotifier, FormOutputState>((ref) {
  return FormOutputStateNotifier();
});
