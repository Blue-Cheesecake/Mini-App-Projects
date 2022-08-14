import 'package:flutter/material.dart';
import 'package:tip_calculator/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildBillCard(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        color: ThemeColor.white,
        child: Container(
          width: double.infinity,
          child: Column(
            children: [],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.lightGrayishCyan,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  "SPLI\nTTER",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 10),
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
