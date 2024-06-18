import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';
import '../../logic/logic.dart';

@RoutePage()
class AddNewPlacePage extends ConsumerWidget {
  const AddNewPlacePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: ref.watch(addPlaceInputStateProvider.select((value) => value.textEditingController)),
              onChanged: ref.read(addPlaceInputStateProvider.notifier).updateText,
              onSubmitted: (value) {
                ref.read(addPlaceInputStateProvider.notifier).updateText(value);
                final title = ref.read(addPlaceInputStateProvider).text;
                ref.read(homeDataStateProvider.notifier).addPlace(PlaceModel(title: title ?? ''));
                context.router.pop();
              },
              decoration: const InputDecoration(
                label: Text('Place'),
              ),
              style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
              onTapOutside: (event) => FocusScope.of(context).requestFocus(FocusNode()),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final title = ref.read(addPlaceInputStateProvider).text;
                ref.read(homeDataStateProvider.notifier).addPlace(PlaceModel(title: title ?? ''));
                context.router.pop();
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
