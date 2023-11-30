import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:age_calculator/features/home/logic/logic.dart';
import 'package:age_calculator/features/home/utils/utils.dart';

class YearTextFieldWD extends ConsumerStatefulWidget {
  const YearTextFieldWD({Key? key}) : super(key: key);

  @override
  ConsumerState<YearTextFieldWD> createState() => _YearTextFieldWDState();
}

class _YearTextFieldWDState extends ConsumerState<YearTextFieldWD> {
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
      title: HomepageMessages.year,
      placeholder: HomepageMessages.yearPlaceholder,
      controller: _controller,
      onChanged: (value) => ref.read(formInputStateProvider.notifier).updateYear(int.tryParse(value ?? '')),
      onSubmitted: (value) => ref.read(formInputStateProvider.notifier).updateYear(int.tryParse(value ?? '')),
      errorText: ref.watch(validationInputStateProvider.select((value) => value.yearErrorText)),
    );
  }
}
