import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactive_rating_component/const_color.dart';
import 'package:interactive_rating_component/widgets/rate_button.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _isSummited = false;
  var _selectedIndex = -1;

  Widget _header() {
    return const Text(
      "How did we do?",
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _contents() {
    return Text(
      "Please let us know how we did with your support\nrequest. All feedback is appreciated to help us\nimprove our offering.",
      style: TextStyle(
        color: ConstColor.mediumGrey,
        height: 1.5,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _starIcon() {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: ConstColor.darkBlue,
          borderRadius: const BorderRadius.all(Radius.circular(999))),
      child: SvgPicture.asset("assets/images/icon-star.svg"),
    );
  }

  Widget _defaultContainer() {
    var rateList = <Widget>[];
    print(("Rebuilding with $_selectedIndex index"));
    for (int i = 0; i < 5; i++) {
      rateList.add(RateButton(
          score: i + 1,
          isSelected: _selectedIndex == i,
          handleOnClicked: _handleOnClicked));
    }

    return Wrap(
      direction: Axis.vertical,
      children: [
        _starIcon(),
        const SizedBox(height: 30),
        _header(),
        const SizedBox(height: 15),
        _contents(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rateList,
        ),
      ],
    );
  }

  Widget _summitedContainer() {
    return Container();
  }

  void _handleOnClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.veryDarkBlue,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: ConstColor.containerBg,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          width: 370,
          child: _isSummited ? _summitedContainer() : _defaultContainer(),
        ),
      ),
    );
  }
}
