import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';
import 'package:age_calculator/features/home/utils/utils.dart';

class MonthTextFieldWD extends ConsumerStatefulWidget {
  const MonthTextFieldWD({Key? key}) : super(key: key);

  @override
  ConsumerState<MonthTextFieldWD> createState() => _MonthTextFieldWDState();
}

class _MonthTextFieldWDState extends ConsumerState<MonthTextFieldWD> {
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
      title: HomepageMessages.month,
      placeholder: HomepageMessages.monthPlaceholder,
      controller: _controller,
      onChanged: (value) => ref.read(formInputStateProvider.notifier).updateMonth(int.tryParse(value ?? '')),
      onSubmitted: (value) => ref.read(formInputStateProvider.notifier).updateMonth(int.tryParse(value ?? '')),
      errorText: ref.watch(validationInputStateProvider.select((value) => value.monthErrorText)),
    );
  }
}
