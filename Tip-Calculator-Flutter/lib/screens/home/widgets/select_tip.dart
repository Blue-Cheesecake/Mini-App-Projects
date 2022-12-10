import 'package:flutter/material.dart';
import 'package:tip_calculator/constants.dart';
import 'package:tip_calculator/screens/home/widgets/common/section_title.dart';
import 'package:tip_calculator/screens/home/widgets/common/tip_button.dart';

class SelectTip extends StatefulWidget {
  const SelectTip({Key? key, required this.callback, required this.selectedTip})
      : super(key: key);

  final int selectedTip;
  final Function(int) callback;

  @override
  State<SelectTip> createState() => _SelectTipState();
}

class _SelectTipState extends State<SelectTip> {
  void _handleClickButton(int newValue) {
    widget.callback(newValue);
  }

  Widget _customTipButton() {
    return TextField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        filled: true,
        fillColor: KColor.veryLightGrayishCyan,
        focusColor: Colors.blue,
        hintStyle: TextStyle(
          fontSize: 24,
          color: KColor.darkGrayishCyan,
        ),
        hintText: "Custom",
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KColor.grayishCyan, width: 2.0),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KColor.white, width: 0.0),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tipsButton = <Widget>[
      TipButton(
          value: 5,
          isSelected: widget.selectedTip == 5,
          handleSelected: _handleClickButton),
      TipButton(
          value: 10,
          isSelected: widget.selectedTip == 10,
          handleSelected: _handleClickButton),
      TipButton(
          value: 15,
          isSelected: widget.selectedTip == 15,
          handleSelected: _handleClickButton),
      TipButton(
          value: 25,
          isSelected: widget.selectedTip == 25,
          handleSelected: _handleClickButton),
      TipButton(
          value: 50,
          isSelected: widget.selectedTip == 50,
          handleSelected: _handleClickButton),
      _customTipButton(),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: "Select Tip %"),
        const SizedBox(height: 10),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 50,
            crossAxisCount: 2,
          ),
          shrinkWrap: true,
          itemCount: tipsButton.length,
          itemBuilder: (context, index) {
            return tipsButton[index];
          },
        ),
      ],
    );
  }
}
