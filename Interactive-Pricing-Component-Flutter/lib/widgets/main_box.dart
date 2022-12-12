import 'package:flutter/material.dart';

class MainBox extends StatefulWidget {
  const MainBox({
    Key? key,
    required this.currentValue,
    required this.monthlyBillingStatus,
    required this.updateBill,
    required this.updateCost,
  }) : super(key: key);

  final double currentValue;
  final bool monthlyBillingStatus;
  final Function(bool) updateBill;
  final Function(double) updateCost;

  @override
  State<MainBox> createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
