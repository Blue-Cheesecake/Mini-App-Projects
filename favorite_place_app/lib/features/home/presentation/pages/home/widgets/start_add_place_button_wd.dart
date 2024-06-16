import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class StartAddPlaceButtonWD extends StatelessWidget {
  const StartAddPlaceButtonWD({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.router.pushNamed('/add-new-place');
      },
      icon: const Icon(Icons.add),
    );
  }
}
