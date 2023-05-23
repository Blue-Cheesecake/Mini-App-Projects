import 'package:doctor_appointment_flutter/appointment/widgets/category_item_widget.dart';
import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key}) : super(key: key);

  final List<String> catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear",
  ];

  final List<Icon> catIcons = [
    const Icon(
      MdiIcons.toolboxOutline,
      color: AppColor.blue,
      size: 30,
    ),
    const Icon(
      MdiIcons.heartPlus,
      color: AppColor.blue,
      size: 30,
    ),
    const Icon(
      MdiIcons.eye,
      color: AppColor.blue,
      size: 30,
    ),
    const Icon(
      MdiIcons.brain,
      color: AppColor.blue,
      size: 30,
    ),
    const Icon(
      MdiIcons.earHearing,
      color: AppColor.blue,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Categories",
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: catNames.asMap().entries.map((e) {
              int index = e.key;
              String name = e.value;
              Icon icon = catIcons[index];
              return CategoryItemWidget(name: name, icon: icon);
            }).toList(),
          ),
        )
      ],
    );
  }
}
