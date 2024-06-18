import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../logic/logic.dart';

class PlacesListWD extends ConsumerWidget {
  const PlacesListWD({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final placesModelList = ref.watch(homeDataStateProvider.select((value) => value.places));
    return ListView.builder(
      itemCount: placesModelList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(placesModelList[index].title),
        );
      },
    );
  }
}
