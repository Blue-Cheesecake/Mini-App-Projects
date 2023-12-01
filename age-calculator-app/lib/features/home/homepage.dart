import 'package:flutter/material.dart';

import 'package:age_calculator/config/config.dart';
import 'package:age_calculator/features/home/widgets/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff0f0f0),
      body: Center(
        child: _MainBox(),
      ),
    );
  }
}

class _MainBox extends StatelessWidget {
  const _MainBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const smallRadius = Radius.circular(15);
    const bigRadius = Radius.circular(110);

    return Container(
      width: 350,
      decoration: const BoxDecoration(
        color: DesignSystem.g1,
        borderRadius: BorderRadius.only(
          topLeft: smallRadius,
          topRight: smallRadius,
          bottomLeft: smallRadius,
          bottomRight: bigRadius,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FieldsSectionWD(),
          SizedBox(height: 25),
          ButtonSectionWD(),
          SizedBox(height: 10),
          ResultSectionWD(),
        ],
      ),
    );
  }
}
