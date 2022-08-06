import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';

class FiltersView extends StatelessWidget {
  const FiltersView({Key? key}) : super(key: key);

  Widget _index(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialScaffold(
      widget: _index(context),
      title: "Filters",
      requireBackButt: false,
    );
  }
}
