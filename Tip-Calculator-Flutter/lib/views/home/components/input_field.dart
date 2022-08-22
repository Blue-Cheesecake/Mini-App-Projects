import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tip_calculator/utils/constants.dart';

class InputField extends StatelessWidget {
  final String title;
  final void Function(String) handleSubmitted;
  final TextEditingController controller;
  final Widget prefixIcon;

  const InputField({
    Key? key,
    required this.title,
    required this.handleSubmitted,
    required this.prefixIcon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          style: Theme.of(context).textTheme.bodyText1,
          onChanged: handleSubmitted,
          textAlign: TextAlign.end,
          controller: controller,
          keyboardType: Platform.isIOS
              ? const TextInputType.numberWithOptions(
                  signed: true, decimal: true)
              : TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            hintText: "0",
            filled: true,
            fillColor: ThemeColor.veryLightGrayish,
            prefixIcon: prefixIcon,
            border: InputBorder.none,
          ),
        ),
      ],
    );
  }
}
