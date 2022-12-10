import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tip_calculator/constants.dart';
import 'package:tip_calculator/screens/home/widgets/bill.dart';
import 'package:tip_calculator/screens/home/widgets/number_of_people.dart';
import 'package:tip_calculator/screens/home/widgets/result.dart';
import 'package:tip_calculator/screens/home/widgets/select_tip.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _bill = DefaultValue.bill;
  var _currentTip = DefaultValue.tip;
  var _numOfPeo = DefaultValue.numOfPeople;

  void _updateTip(int newValue) {
    setState(() {
      _currentTip = newValue;
    });
  }

  void _updateBill(double newValue) {
    setState(() {
      _bill = newValue;
    });
  }

  void _updateNumberOfPeople(int newValue) {
    setState(() {
      _numOfPeo = newValue;
    });
  }

  void _reset() {
    _updateBill(DefaultValue.bill);
    _updateTip(DefaultValue.tip);
    _updateNumberOfPeople(DefaultValue.numOfPeople);
  }

  @override
  Widget build(BuildContext context) {
    const containerBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    );

    return Scaffold(
      backgroundColor: KColor.lightGrayishCyan,
      body: SingleChildScrollView(
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
                  Bill(callback: _updateBill),
                  const SizedBox(height: 30),
                  SelectTip(
                    selectedTip: _currentTip,
                    callback: _updateTip,
                  ),
                  const SizedBox(height: 30),
                  NumberOfPeople(callback: _updateNumberOfPeople),
                  const SizedBox(height: 30),
                  Result(
                    bill: _bill,
                    tipPercentage: _currentTip,
                    numPeople: _numOfPeo,
                    callback: _reset,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
