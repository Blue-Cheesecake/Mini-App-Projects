import 'package:color_text_editor/logic/logic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rich_field_controller/rich_field_controller.dart';
import 'package:flutter/material.dart';

class ColorTextEditorWD extends ConsumerStatefulWidget {
  const ColorTextEditorWD({Key? key}) : super(key: key);

  @override
  ConsumerState<ColorTextEditorWD> createState() => _ColorTextEditorWDState();
}

class _ColorTextEditorWDState extends ConsumerState<ColorTextEditorWD> {
  late final RichFieldController _richFieldController;
  late RichFieldSelectionControls _selectionControls;

  @override
  void initState() {
    super.initState();
    _richFieldController = RichFieldController();
    _selectionControls = RichFieldSelectionControls(context, _richFieldController);
  }

  @override
  void dispose() {
    _richFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _richFieldController.updateStyle(
      TextStyle(color: ref.watch(textStyleStateProvider.select((value) => value.color))),
    );
    _selectionControls = RichFieldSelectionControls(context, _richFieldController);
    return TextField(
      controller: _richFieldController,
      selectionControls: _selectionControls,
    );
  }
}
