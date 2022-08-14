import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        Text(title),
        TextField(
          textAlign: TextAlign.end,
          onSubmitted: handleSubmitted,
          controller: controller,
          keyboardType: Platform.isIOS
              ? const TextInputType.numberWithOptions(
                  signed: true, decimal: true)
              : TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(prefixIcon: prefixIcon),
        ),
      ],
    );
  }
}
