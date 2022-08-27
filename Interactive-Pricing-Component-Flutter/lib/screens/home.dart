import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactive_pricing_component/screens/components/advantages_list.dart';
import 'package:interactive_pricing_component/screens/components/bill_switch.dart';
import 'package:interactive_pricing_component/screens/components/start_button.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildPricingCard(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
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
                    const BillSwitch(),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: const [
                AdvantagesList(advantages: HomeCard.advantagesList),
                StartTrialButton(),
              ],
            ),
          )
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
