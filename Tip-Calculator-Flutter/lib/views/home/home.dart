import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tip_calculator/bloc/bill/bill_bloc.dart';
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

  void _resetHandler() {
    setState(() {
      _billController.text = "";
      _numPeople.text = "";
    });
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
                print("New Val: $changedVal");
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
              handleSubmitted: (changedVal) {},
              prefixIcon: SvgPicture.asset(
                "assets/images/icon-person.svg",
                fit: BoxFit.scaleDown,
              ),
              controller: _numPeople,
            ),
            BlocBuilder<BillBloc, BillState>(
              builder: (context, state) {
                return TipAmountCard(
                  tipAmount: state.billValue,
                  total: 456.7,
                  resetHandler: _resetHandler,
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
