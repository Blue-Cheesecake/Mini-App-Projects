import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interactive_pricing_component/constants.dart';

class MainBox extends StatefulWidget {
  const MainBox({
    Key? key,
    required this.currentValue,
    required this.monthlyBillingStatus,
    required this.updateBill,
    required this.updateCost,
    required this.benefits,
  }) : super(key: key);

  final double currentValue;
  final bool monthlyBillingStatus;
  final Function(bool) updateBill;
  final Function(double) updateCost;
  final List<String> benefits;

  @override
  State<MainBox> createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  Widget _buildSliderSection() {
    return Column(
      children: [
        Text(
          "100K PAGEVIEWS",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
            color: Style.Color.text,
            letterSpacing: 1.4,
          ),
        ),
        SizedBox(height: Style.dimension.mainBoxPaddingSize),
        Slider(
          value: widget.currentValue,
          onChanged: widget.updateCost,
          min: DefaultValue.minSliderValue,
          max: DefaultValue.maxSliderValue,
        ),
        SizedBox(height: Style.dimension.mainBoxPaddingSize),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "\$${widget.currentValue.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
                color: Style.Color.textAndCTABackground,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              "/ month",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Style.Color.text,
              ),
            ),
          ],
        ),
        SizedBox(height: Style.dimension.mainBoxPaddingSize),
      ],
    );
  }

  Widget _buildBillingSection() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Monthly Billing",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Style.Color.text,
          ),
        ),
        Switch(
          value: widget.monthlyBillingStatus,
          onChanged: widget.updateBill,
        ),
        Text(
          "Yearly Billing",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Style.Color.text,
          ),
        ),
        const SizedBox(width: 5),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          decoration: BoxDecoration(
            color: Style.Color.discountBackground,
            borderRadius: const BorderRadius.all(Radius.circular(999)),
          ),
          child: Text(
            "-25%",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Style.Color.discountText,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBottomSection() {
    final List<Widget> benefitsWidgets = widget.benefits.map(((String val) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/icon-check.svg",
            height: 10,
          ),
          const SizedBox(width: 20),
          Text(
            val,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Style.Color.text,
              height: 2,
            ),
          ),
        ],
      );
    })).toList();

    return Column(
      children: [
        ...benefitsWidgets,
        SizedBox(height: Style.dimension.mainBoxPaddingSize),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Style.Color.textAndCTABackground,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 65,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(999)),
          ),
          child: Text(
            "Start my trial",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Style.Color.CTAText,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(10));
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: borderRadius),
      shadowColor: Style.Color.text,
      elevation: 1,
      child: Container(
        width: Style.dimension.mobileMaximumMainBoxWidth,
        decoration: BoxDecoration(
          color: Style.Color.pricingComponentBackground,
          borderRadius: borderRadius,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(Style.dimension.mainBoxPaddingSize),
              child: Column(
                children: [
                  _buildSliderSection(),
                  _buildBillingSection(),
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 1.5,
              color: Style.Color.toggleBackground,
            ),
            Padding(
              padding: EdgeInsets.all(Style.dimension.mainBoxPaddingSize),
              child: _buildBottomSection(),
            ),
          ],
        ),
      ),
    );
  }
}
