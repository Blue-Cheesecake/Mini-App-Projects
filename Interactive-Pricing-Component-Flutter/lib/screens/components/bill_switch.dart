import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class BillSwitch extends StatefulWidget {
  const BillSwitch({Key? key}) : super(key: key);

  @override
  State<BillSwitch> createState() => _BillSwitchState();
}

class _BillSwitchState extends State<BillSwitch> {
  var _isMonthlyBilling = false;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return Switch(
        value: _isMonthlyBilling,
        onChanged: (curr) => setState(() {
          _isMonthlyBilling = !_isMonthlyBilling;
        }),
      );
    }
    return SizedBox(
      width: 40,
      child: FittedBox(
        fit: BoxFit.cover,
        child: CupertinoSwitch(
          value: _isMonthlyBilling,
          onChanged: (curr) => setState(() {
            _isMonthlyBilling = !_isMonthlyBilling;
          }),
          activeColor: ComponentColor.sliderBackground,
          trackColor: ComponentColor.toggleBackground,
        ),
      ),
    );
  }
}
