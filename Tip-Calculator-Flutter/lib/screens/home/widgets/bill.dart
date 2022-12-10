import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tip_calculator/constants.dart';
import 'package:tip_calculator/screens/home/widgets/common/section_title.dart';

class Bill extends StatelessWidget {
  const Bill({Key? key, required this.controller, this.callback})
      : super(key: key);

  final TextEditingController controller;
  final Function? callback;

  TextField _billInput() {
    return TextField(
      style: TextStyle(
        fontSize: 24,
        color: KColor.veryDarkCyan,
        // to center cursor -> cursor height / font size
        height: 25 / 24,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.end,
      cursorColor: KColor.strongCyan,
      cursorHeight: 25,
      cursorWidth: 5,
      cursorRadius: const Radius.circular(20),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        filled: true,
        fillColor: KColor.veryLightGrayishCyan,
        focusColor: Colors.blue,
        prefixIcon: SvgPicture.asset("assets/images/icon-dollar.svg",
            fit: BoxFit.scaleDown),
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
      onSubmitted: (_) {
        if (callback != null) {
          callback!();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: "Bill"),
        const SizedBox(height: 10),
        _billInput(),
      ],
    );
  }
}
