import 'package:flutter/material.dart';
import 'package:interactive_pricing_component/constants.dart';

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
  Widget _buildSliderSection() {
    return Column(
      children: [
        Slider(
          value: widget.currentValue,
          onChanged: widget.updateCost,
          min: DefaultValue.minSliderValue,
          max: DefaultValue.maxSliderValue,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${widget.currentValue.toStringAsFixed(2)}"),
            Text("/ month"),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Style.dimension.mobileMaximumMainBoxWidth,
      padding: EdgeInsets.all(Style.dimension.mainBoxPaddingSize),
      decoration: BoxDecoration(
        color: Style.Color.pricingComponentBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("100K PAGEVIEWS"),
          _buildSliderSection(),
        ],
      ),
    );
  }
}
