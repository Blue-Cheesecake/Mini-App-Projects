import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tip_calculator/constants.dart';
import 'package:tip_calculator/screens/home/widgets/bill.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final _billController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const containerBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    );

    return Scaffold(
      backgroundColor: KColor.lightGrayishCyan,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: SvgPicture.asset("assets/images/logo.svg"),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: KColor.white,
                borderRadius: containerBorderRadius,
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bill(
                    controller: _billController,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
