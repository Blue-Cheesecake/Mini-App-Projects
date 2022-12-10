import 'package:flutter/material.dart';
import 'package:tip_calculator/constants.dart';

class TipButton extends StatelessWidget {
  const TipButton(
      {Key? key,
      required this.value,
      required this.isSelected,
      required this.handleSelected})
      : super(key: key);

  final int value;
  final bool isSelected;
  final Function(int) handleSelected;

  @override
  Widget build(BuildContext context) {
    final Color bg = isSelected ? KColor.strongCyan : KColor.veryDarkCyan;
    final Color fg = isSelected ? KColor.veryDarkCyan : KColor.white;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: bg, foregroundColor: fg),
      onPressed: () => handleSelected(value),
      child: Text(
        "$value\$",
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
