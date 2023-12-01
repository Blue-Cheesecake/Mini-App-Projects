import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/config/config.dart';
import 'package:age_calculator/features/home/utils/utils.dart';
import 'package:age_calculator/features/home/logic/logic.dart';

class CalculateButtonWD extends ConsumerWidget {
  const CalculateButtonWD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        final isValid = ref.watch(formInputStateProvider.select((value) => value.isButtonEnabled));

        if (isValid) {
          final int day = ref.read(formInputStateProvider.select((value) => value.day))!;
          final int month = ref.read(formInputStateProvider.select((value) => value.month))!;
          final int year = ref.read(formInputStateProvider.select((value) => value.year))!;

          ref.read(formOutputStateProvider.notifier).calculateDate(
                day: day,
                month: month,
                year: year,
              );
          return;
        }
        return;
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: DesignSystem.acaPrimary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: HomepageAssets.downArrow,
      ),
    );
  }
}
