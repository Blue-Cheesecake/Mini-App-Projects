import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interactive_pricing_component/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset("assets/images/pattern-circles.svg"),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Simple, traffic-based pricing",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Style.Color.textAndCTABackground,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Sign-up for our 30-day trial.\nNo credit card required.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Style.Color.text,
                height: 2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
