import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interactive_pricing_component/constants.dart';
import 'package:interactive_pricing_component/widgets/main_box.dart';
import 'package:interactive_pricing_component/widgets/section_title.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  static const String routeName = "/homepage";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _isMonthlyBilling = false;
  var _currentCost = DefaultValue.valSlider;

  void _updateIsMonthlyBilling(bool value) {
    setState(() {
      _isMonthlyBilling = value;
    });
  }

  void _updateCurrentCost(double value) {
    setState(() {
      _currentCost = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Color.mainBackground,
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/bg-pattern.svg",
              fit: BoxFit.fill,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SectionTitle(),
                  const SizedBox(height: 30),
                  MainBox(
                    currentValue: _currentCost,
                    monthlyBillingStatus: _isMonthlyBilling,
                    updateCost: _updateCurrentCost,
                    updateBill: _updateIsMonthlyBilling,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
