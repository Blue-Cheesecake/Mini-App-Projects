import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdvantagesList extends StatelessWidget {
  const AdvantagesList({Key? key, required this.advantages}) : super(key: key);

  final List<String> advantages;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...advantages.map((advText) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/icon-check.svg"),
                  const SizedBox(width: 20),
                  Text(
                    advText,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          );
        }).toList(),
        const SizedBox(height: 20)
      ],
    );
  }
}
