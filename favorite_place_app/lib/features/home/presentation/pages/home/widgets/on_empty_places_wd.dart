import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';

class OnEmptyPlacesWD extends StatelessWidget {
  const OnEmptyPlacesWD({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        HomePageMessages.emptyPlaces,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
