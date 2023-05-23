import 'package:doctor_appointment_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 65,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            spreadRadius: 3,
          ),
        ],
      ),
      child: TextFormField(
        cursorColor: AppColor.blue,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColor.white,
          border: InputBorder.none,
          hintText: "Search here...",
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
