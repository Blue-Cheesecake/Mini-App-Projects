import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interactive_pricing_component/bloc/month_bill/month_bill_bloc.dart';

class BillSlider extends StatelessWidget {
  const BillSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MonthBillBloc, MonthBillState>(
      builder: (context, state) {
        return Column(
          children: [
            Slider(
              min: 0.0,
              max: 32.00,
              value: state.monthBillValue,
              onChanged: (newVal) {
                context.read<MonthBillBloc>().add(ChangeMonthBill(newVal));
              },
            ),
          ],
        );
      },
    );
  }
}
