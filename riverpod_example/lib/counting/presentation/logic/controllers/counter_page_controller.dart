import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/counting/presentation/logic/providers/counter_provider.dart';

class CounterPageController {
  final BuildContext context;
  final WidgetRef ref;

  CounterPageController(this.context, this.ref);

  int get currentValue => ref.watch(counterProvider);

  void onPressedReset() {
    ref.read(counterProvider.notifier).reset();
  }

  void onPressedFloatingButton() {
    ref.read(counterProvider.notifier).increment();
  }
}
