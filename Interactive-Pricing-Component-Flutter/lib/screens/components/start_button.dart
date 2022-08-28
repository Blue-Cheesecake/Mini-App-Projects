import 'package:flutter/material.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class StartTrialButton extends StatelessWidget {
  const StartTrialButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 60,
          ),
        ),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => ComponentColor.textCTABackground,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        "Start my trial",
        style: TextStyle(color: ComponentColor.ctaText, fontSize: 15),
      ),
    );
  }
}
