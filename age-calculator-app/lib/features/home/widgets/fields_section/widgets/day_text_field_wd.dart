import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';
import 'package:age_calculator/features/home/utils/utils.dart';

class DayTextFieldWD extends ConsumerStatefulWidget {
  const DayTextFieldWD({Key? key}) : super(key: key);

  @override
  ConsumerState<DayTextFieldWD> createState() => _DayTextFieldWDState();
}

class _DayTextFieldWDState extends ConsumerState<DayTextFieldWD> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DateTextFieldWD(
      title: HomepageMessages.day,
      placeholder: HomepageMessages.dayPlaceholder,
      controller: _controller,
      onChanged: (value) => ref.read(formInputStateProvider.notifier).updateDay(int.tryParse(value ?? '')),
      onSubmitted: (value) => ref.read(formInputStateProvider.notifier).updateDay(int.tryParse(value ?? '')),
      errorText: ref.watch(validationInputStateProvider.select((value) => value.dayErrorText)),
    );
  }
}
