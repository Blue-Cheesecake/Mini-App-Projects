import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tip_calculator/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildBillComponent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Bill"),
        TextField(
          textAlign: TextAlign.end,
          onSubmitted: (valueChanged) {},
          controller: TextEditingController(text: "0.0"),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: SvgPicture.asset(
              "assets/images/icon-dollar.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
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
            _buildBillComponent(context),
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
