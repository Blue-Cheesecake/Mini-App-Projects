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
  // TODO: Pass controller to bill & num of people instead
  // in order to use reset function
  var _currentTip = DefaultValue.tip;
  final _billController = TextEditingController();
  final _numPeopleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _billController.text = DefaultValue.bill.toString();
    _numPeopleController.text = DefaultValue.numOfPeople.toString();
  }

  void _updateTip(int newValue) {
    setState(() {
      _currentTip = newValue;
    });
  }

  void _updateBill(double newValue) {
    setState(() {
      _billController.text = newValue.toString();
    });
  }

  void _updateNumberOfPeople(int newValue) {
    setState(() {
      _numPeopleController.text = newValue.toString();
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
                  Bill(
                    txtCtr: _billController,
                    callback: _updateBill,
                  ),
                  const SizedBox(height: 30),
                  SelectTip(
                    selectedTip: _currentTip,
                    callback: _updateTip,
                  ),
                  const SizedBox(height: 30),
                  NumberOfPeople(
                    txtCrt: _numPeopleController,
                    callback: _updateNumberOfPeople,
                  ),
                  const SizedBox(height: 30),
                  Result(
                    bill: double.parse(_billController.text),
                    tipPercentage: _currentTip,
                    numPeople: int.parse(_numPeopleController.text),
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
