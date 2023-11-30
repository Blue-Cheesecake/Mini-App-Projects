import 'package:flutter/material.dart';

import 'package:age_calculator/config/config.dart';

class CommonFormFieldWD extends StatelessWidget {
  const CommonFormFieldWD({
    required this.controller,
    required this.obsecureText,
    this.labelText,
    this.onChanged,
    this.onSubmitted,
    this.onTapOutside,
    this.enabled,
    this.errorText,
    this.focusNode,
    this.backgroundColor,
    this.prefixIcon,
    this.outlineInputBorder,
    this.hintText,
    this.inputTextStyle,
    this.errorTextStyle,
    this.keyboardType,
    Key? key,
  }) : super(key: key);

  final String? labelText;
  final TextEditingController controller;
  final void Function(String? value)? onChanged;
  final void Function(String? value)? onSubmitted;
  final void Function(PointerDownEvent e)? onTapOutside;
  final bool? enabled;
  final String? errorText;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final OutlineInputBorder? outlineInputBorder;
  final String? hintText;
  final TextStyle? inputTextStyle;
  final bool obsecureText;
  final TextStyle? errorTextStyle;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    const double fontSize = 19;

    return SizedBox(
      width: 85,
      // height: errorText == null ? 45 : 68,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        enabled: enabled,
        maxLines: 1,
        cursorColor: DesignSystem.acaPrimary,
        cursorHeight: 20,
        onTapOutside: onTapOutside ?? (e) => FocusScope.of(context).requestFocus(FocusNode()),
        style: inputTextStyle ??
            TextStyles.bodyText1.copyWith(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
            ),
        obscureText: obsecureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          errorText: errorText,
          errorStyle: errorTextStyle,
          filled: backgroundColor != null,
          fillColor: backgroundColor,
          focusColor: DesignSystem.acaPrimary,
          contentPadding: const EdgeInsets.only(left: 15),
          hintText: hintText,
          hintStyle: TextStyles.bodyText1.copyWith(
            fontSize: fontSize,
            color: DesignSystem.g3,
            fontWeight: FontWeight.w700,
          ),
          labelText: labelText,
          labelStyle: TextStyles.bodyText5.copyWith(color: DesignSystem.g3),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(width: 2, color: DesignSystem.acaPrimary.withOpacity(0.2)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(width: 2, color: DesignSystem.acaError),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(width: 1, color: DesignSystem.acaError),
          ),
          enabledBorder: outlineInputBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(width: 1, color: DesignSystem.g2),
              ),
        ),
      ),
    );
  }
}
