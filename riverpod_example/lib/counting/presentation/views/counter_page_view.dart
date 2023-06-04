import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/counting/presentation/logic/controllers/counter_page_controller.dart';

class CounterPageView extends ConsumerWidget {
  const CounterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = CounterPageController(context, ref);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        actions: [
          IconButton(
            onPressed: controller.onPressedReset,
            icon: const Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: Text(
          controller.currentValue.toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.onPressedFloatingButton,
        child: const Icon(Icons.add),
      ),
    );
  }
}
