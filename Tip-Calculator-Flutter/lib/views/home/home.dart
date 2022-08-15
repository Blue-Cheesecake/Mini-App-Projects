import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tip_calculator/bloc/bill/bill_bloc.dart';
import 'package:tip_calculator/bloc/num_of_people/num_of_people_bloc.dart';
import 'package:tip_calculator/models/tips_calculator.dart';
import 'package:tip_calculator/utils/constants.dart';
import 'package:tip_calculator/views/home/components/input_field.dart';
import 'package:tip_calculator/views/home/components/tip_amount.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _billController = TextEditingController();
  final TextEditingController _numPeople = TextEditingController();

  void _resetHandler(BuildContext context) {
    setState(() {
      _billController.text = "";
      _numPeople.text = "";
    });
    context.read<BillBloc>().add(ResetBillValueEvent());
    context.read<NumOfPeopleBloc>().add(ResetNumPeopleEvent());
  }

  Widget _buildBillCard(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            InputField(
              title: "Bill",
              handleSubmitted: (changedVal) {
                context
                    .read<BillBloc>()
                    .add(ChangeBillValueEvent(double.parse(changedVal)));
              },
              prefixIcon: SvgPicture.asset(
                "assets/images/icon-dollar.svg",
                fit: BoxFit.scaleDown,
              ),
              controller: _billController,
            ),
            const SizedBox(height: 15),
            InputField(
              title: "Number of People",
              handleSubmitted: (changedVal) {
                context
                    .read<NumOfPeopleBloc>()
                    .add(ChangeNumPeopleEvent(int.parse(changedVal)));
              },
              prefixIcon: SvgPicture.asset(
                "assets/images/icon-person.svg",
                fit: BoxFit.scaleDown,
              ),
              controller: _numPeople,
            ),
            BlocBuilder<NumOfPeopleBloc, NumOfPeopleState>(
              builder: (context, state1) {
                return BlocBuilder<BillBloc, BillState>(
                  builder: (context, state2) {
                    final tipsCalculator = TipsCalculator(
                      state2.billValue,
                      15,
                      state1.numOfPeople,
                    );

                    return TipAmountCard(
                      tipAmount: tipsCalculator.tipAmount,
                      total: tipsCalculator.total,
                      resetHandler: () => _resetHandler(context),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.lightGrayishCyan,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                  child: SvgPicture.asset("assets/images/logo.svg"),
                ),
              ),
              _buildBillCard(context),
            ],
          ),
        ),
      ),
    );
  }
}
