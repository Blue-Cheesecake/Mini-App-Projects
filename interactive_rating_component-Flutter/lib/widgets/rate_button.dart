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
          padding: const MaterialStatePropertyAll(EdgeInsets.all(20)),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (isSelected) {
                return ConstColor.orange;
              }
              if (states.contains(MaterialState.hovered)) {
                return ConstColor.lightGrey;
              }
              return null;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white;
            }
            return ConstColor.mediumGrey;
          })),
      onPressed: () => handleOnClicked(score - 1),
      child: Text(
        "$score",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: !isSelected ? null : Colors.white,
        ),
      ),
    );
  }
}
