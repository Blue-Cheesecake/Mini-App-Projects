import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/utils.dart';
import '../../logic/logic.dart';
import 'widgets/widgets.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomePageMessages.appBarTitle),
        centerTitle: false,
        actions: const [StartAddPlaceButtonWD()],
      ),
      body: Builder(
        builder: (context) {
          final isEmpty = ref.watch(homeDataStateProvider).isEmpty;

          if (isEmpty) {
            return const OnEmptyPlacesWD();
          }
          return const PlacesListWD();
        },
      ),
    );
  }
}
