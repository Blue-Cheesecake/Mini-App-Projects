import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SvgPicture.asset("assets/images/pattern-circles.svg", width: 175,),
            Column(
              children: [
                Text(HomeTitle.title, style: Theme.of(context).textTheme.headline1,),
                const SizedBox(height: 15,),
                Text(HomeTitle.subTitle, style: Theme.of(context).textTheme.headline2, textAlign: TextAlign.center,),
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
      body: SafeArea(child: Column(
        children: [
          _buildTitle(context),
          _buildPricingCard(context),
        ],
      ))
    );
  }
}
