import 'package:flutter/material.dart';

import 'package:age_calculator/config/config.dart';
import 'package:age_calculator/utils/common_widgets/common_widgets.dart';

class DateTextFieldWD extends StatelessWidget {
  const DateTextFieldWD({
    required this.title,
    required this.placeholder,
    required this.controller,
    required this.onChanged,
    required this.onSubmitted,
    this.errorText,
    Key? key,
  }) : super(key: key);

  final String title;
  final String placeholder;
  final TextEditingController controller;
  final String? errorText;
  final void Function(String? value) onChanged;
  final void Function(String? value) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.bodyText2.copyWith(
            color: DesignSystem.g3,
            fontWeight: FontWeight.w700,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 5),
        CommonFormFieldWD(
          controller: controller,
          obsecureText: false,
          errorText: errorText,
          hintText: placeholder,
          keyboardType: TextInputType.number,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
        ),
      ],
    );
  }
}
