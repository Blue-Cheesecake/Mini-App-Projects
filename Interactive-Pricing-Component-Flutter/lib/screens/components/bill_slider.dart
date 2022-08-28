import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactive_pricing_component/bloc/month_bill/month_bill_bloc.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class BillSlider extends StatelessWidget {
  const BillSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonthBillBloc, MonthBillState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 20),
            SliderTheme(
              data: SliderThemeData(
                  trackHeight: 7,
                  thumbColor: ComponentColor.sliderBackground,
                  activeTrackColor: ComponentColor.fullSliderBar,
                  inactiveTrackColor: ComponentColor.emptySliderBar),
              child: Slider(
                min: 0.0,
                max: 32.00,
                value: state.monthBillValue,
                onChanged: (newVal) {
                  context.read<MonthBillBloc>().add(ChangeMonthBill(newVal));
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$${state.monthBillValue.toStringAsPrecision(4)}",
                  style: TextStyle(
                    fontFamily: "Manrope",
                    fontSize: 37,
                    fontWeight: FontWeight.w800,
                    color: ComponentColor.textCTABackground,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "/ month",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
