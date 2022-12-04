import 'package:flutter/material.dart';
import 'package:interactive_rating_component/const_color.dart';

class RateButton extends StatelessWidget {
  const RateButton(
      {Key? key,
      required this.score,
      required this.isSelected,
      required this.handleOnClicked})
      : super(key: key);

  final int score;
  final bool isSelected;
  final Function(int) handleOnClicked;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
            !isSelected ? ConstColor.darkBlue : ConstColor.orange),
        shape: const MaterialStatePropertyAll(CircleBorder()),
        padding: const MaterialStatePropertyAll(EdgeInsets.all(13)),
      ),
      onPressed: () => handleOnClicked,
      child: Text(
        "$score",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: !isSelected ? ConstColor.mediumGrey : Colors.white,
        ),
      ),
    );
  }
}
