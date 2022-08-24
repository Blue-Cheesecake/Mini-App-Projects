import 'package:flutter/material.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _buildPricingCard(BuildContext context) {
    return Card(
      child: Container(

      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/pattern-circles.svg"),
        Column(
          children: [

          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ComponentColor.mainBackground,
      body: SafeArea(child: Column(
        children: [
          _buildTitle(context),
          _buildPricingCard(context),
        ],
      ))
    );
  }
}
