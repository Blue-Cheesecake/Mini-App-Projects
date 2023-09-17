import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';

class ChangeColorButtonWD extends ConsumerWidget {
  const ChangeColorButtonWD({Key? key, required this.color, required this.label}) : super(key: key);

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.read(textStyleStateProvider.notifier).updateColor(color);
      },
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
