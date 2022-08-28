import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactive_pricing_component/screens/components/CardComponent.dart';
import 'package:interactive_pricing_component/utils/constants.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/images/bg-pattern.svg",
            fit: BoxFit.cover,
            alignment: Alignment.bottomLeft,
          ),
          SafeArea(
            child: Column(
              children: [
                _buildTitle(context),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: CardComponent(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
