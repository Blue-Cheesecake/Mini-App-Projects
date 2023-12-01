import 'package:flutter/material.dart';

import 'package:age_calculator/config/config.dart';
import 'package:age_calculator/features/home/widgets/button_section/widgets/widgets.dart';

class ButtonSectionWD extends StatelessWidget {
  const ButtonSectionWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [
        Divider(color: DesignSystem.g2, thickness: 1.5),
        Center(
          child: CalculateButtonWD(),
        ),
      ],
    );
  }
}
