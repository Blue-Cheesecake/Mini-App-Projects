import 'package:flutter/material.dart';
import 'package:flutter_client/core/app_colors.dart';

class DescriptionBoxWidget extends StatelessWidget {
  const DescriptionBoxWidget({Key? key, required this.content})
      : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.component.filterTablets,
      ),
      child: Text(
        content,
        style: TextStyle(color: AppColors.color.darkGrayishCyan),
      ),
    );
  }
}
