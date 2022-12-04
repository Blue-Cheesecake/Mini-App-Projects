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
    for (int i = 0; i < 5; i++) {
      rateList.add(RateButton(
          score: i + 1,
          isSelected: _selectedIndex == i,
          handleOnClicked: _handleOnClicked));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _starIcon(),
        const SizedBox(height: 30),
        _header(),
        const SizedBox(height: 15),
        _contents(),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rateList,
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              if (_selectedIndex != -1) {
                setState(() {
                  _isSummited = true;
                });
              }
            },
            style: ButtonStyle(
                shape: const MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(999),
                  )),
                ),
                backgroundColor: MaterialStatePropertyAll(ConstColor.orange),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.white;
                  }
                  return ConstColor.orange;
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return ConstColor.orange;
                  }
                  return Colors.white;
                })),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 11),
              child: Text(
                "SUBMIT",
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _summitedContainer(int score) {
    return Container();
  }

  void _handleOnClicked(int index) {
    setState(() {
      if (index == _selectedIndex) {
        _selectedIndex = -1;
      } else {
        _selectedIndex = index;
      }
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
          child: _isSummited
              ? _summitedContainer(_selectedIndex + 1)
              : _defaultContainer(),
        ),
      ),
    );
  }
}
