import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  int get currentVal => state;

  void increment() => state++;

  // It can be used, but we can instead use ref.invalidate to reset to
  // original state
  void reset() => state = 0;
}
