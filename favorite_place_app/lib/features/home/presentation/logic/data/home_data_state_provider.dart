import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic.dart';

final homeDataStateProvider = StateNotifierProvider.autoDispose<HomeDataStateNotifier, HomeDataState>((ref) {
  return HomeDataStateNotifier();
});
