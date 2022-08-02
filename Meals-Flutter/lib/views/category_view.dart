import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  Widget _index(BuildContext context) {
    return Column(
      children: [
        const Text("Hello"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialScaffold(widget: _index(context));
  }
}
