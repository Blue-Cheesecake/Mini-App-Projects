import 'package:color_text_editor/widgets/change_color_button_wd.dart';
import 'package:color_text_editor/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(List<String> args) {
  runApp(const ProviderScope(child: Main()));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Text Editor'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Row(
            children: [
              ChangeColorButtonWD(color: Colors.black, label: 'Use Black'),
              ChangeColorButtonWD(color: Colors.red, label: 'Use Ref'),
            ],
          ),
          ColorTextEditorWD(),
        ],
      ),
    );
  }
}
