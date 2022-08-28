import 'package:flutter/material.dart';
import 'package:interactive_pricing_component/screens/components/advantages_list.dart';
import 'package:interactive_pricing_component/screens/components/bill_slider.dart';
import 'package:interactive_pricing_component/screens/components/bill_switch.dart';
import 'package:interactive_pricing_component/screens/components/start_button.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Text(
                  HomeCard.title,
                  style: Theme.of(context).textTheme.headline3,
                ),

                const BillSlider(),

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
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: ComponentColor.discountBackground,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(
                        "${HomeCard.yearlyBillValue}%",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ComponentColor.discountText,
                        ),
                      ),
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
            padding: const EdgeInsets.symmetric(vertical: 40),
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
}
