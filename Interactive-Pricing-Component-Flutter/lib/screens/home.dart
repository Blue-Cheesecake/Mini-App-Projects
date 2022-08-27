import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _isMonthlyBilling = false;

  Widget _buildSwitch(BuildContext context) {
    if (Platform.isAndroid) {
      return Switch(
        value: _isMonthlyBilling,
        onChanged: (curr) => setState(() {
          _isMonthlyBilling = !_isMonthlyBilling;
        }),
      );
    }
    return CupertinoSwitch(
      value: _isMonthlyBilling,
      onChanged: (curr) => setState(() {
        _isMonthlyBilling = !_isMonthlyBilling;
      }),
      activeColor: ComponentColor.sliderBackground,
      trackColor: ComponentColor.toggleBackground,
    );
  }

  Widget _buildPricingCard(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  HomeCard.title,
                  style: Theme.of(context).textTheme.headline3,
                ),

                /// Billing Section
                ///
                ///
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      HomeCard.monthlyBillText,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const Spacer(),
                    _buildSwitch(context),
                    const Spacer(),
                    Text(
                      HomeCard.yearlyBillText,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const Spacer(),
                    Container(
                      child: const Text("${HomeCard.yearlyBillValue}%"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: ComponentColor.emptySliderBar,
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SvgPicture.asset(
              "assets/images/pattern-circles.svg",
              width: 175,
            ),
            Column(
              children: [
                Text(
                  HomeTitle.title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 15),
                Text(
                  HomeTitle.subTitle,
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ComponentColor.mainBackground,
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/bg-pattern.svg",
              fit: BoxFit.cover,
              alignment: Alignment.bottomLeft,
            ),
            Column(
              children: [
                _buildTitle(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: _buildPricingCard(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
