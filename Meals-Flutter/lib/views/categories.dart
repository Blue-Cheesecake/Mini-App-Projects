import 'package:flutter/material.dart';
import 'package:meals_flutter/common/material_scaffold.dart';
import 'package:meals_flutter/components/category_item.dart';
import 'package:meals_flutter/view_models/categories_manager.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categoriesManager = CategoriesManager();

  Widget _index(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: categoriesManager.categories.map((e) {
          return CategoryItem(id: e.id, title: e.title, color: e.color);
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialScaffold(widget: _index(context));
  }
}
