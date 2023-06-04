import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider =
    StateNotifierProviderFamily<CounterNotifier, int, int>((ref, start) {
  return CounterNotifier(start);
});

class CounterNotifier extends StateNotifier<int> {
  final int startVal;

  CounterNotifier([this.startVal = 0]) : super(startVal);

  int get currentVal => state;

  void increment() => state++;

  // It can be used, but we can instead use ref.invalidate to reset to
  // original state
  void reset() => state = 0;
}
