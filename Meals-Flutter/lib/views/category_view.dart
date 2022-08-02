import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    Key? key,
  }) : super(key: key);

  // final String id;
  // final String title;

  Widget _index(BuildContext context) {
    final route =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final title = route["title"] as String;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    return MaterialScaffold(
      widget: _index(context),
      title: route["title"] as String,
    );
  }
}
