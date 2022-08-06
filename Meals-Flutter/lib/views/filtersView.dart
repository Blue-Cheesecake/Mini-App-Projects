import 'package:flutter/material.dart';
import 'package:meals_flutter/common/menuDrawer.dart';

class FiltersView extends StatefulWidget {
  const FiltersView({Key? key, required this.setFilters, required this.filters})
      : super(key: key);

  final void Function(Map<String, bool>) setFilters;
  final Map<String, bool> filters;

  @override
  State<FiltersView> createState() => _FiltersViewState();
}

class _FiltersViewState extends State<FiltersView> {
  var _isGlutenFree = false;
  var _isVegetarian = false;
  var _isVegan = false;
  var _isLactoseFree = false;

  @override
  void initState() {
    super.initState();
    _isGlutenFree = widget.filters["gluten"]!;
    _isVegetarian = widget.filters["vegetarian"]!;
    _isVegan = widget.filters["vegan"]!;
    _isLactoseFree = widget.filters["lactose"]!;
  }

  Widget _buildSwitchListTitle(String title, String subTitle, bool val,
      void Function(bool) updateState) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        value: val,
        onChanged: updateState);
  }

  Widget _index(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        _buildSwitchListTitle(
          "Gluten-free",
          "Only include gluten-free meals",
          _isGlutenFree,
          (newVal) => setState(() {
            _isGlutenFree = newVal;
          }),
        ),
        _buildSwitchListTitle(
          "Vegetarian",
          "Only include vegetable meals",
          _isVegetarian,
          (p0) => setState(() {
            _isVegetarian = p0;
          }),
        ),
        _buildSwitchListTitle(
          "Vegan",
          "Only include vegan meals",
          _isVegan,
          (p0) => setState(() {
            _isVegan = p0;
          }),
        ),
        _buildSwitchListTitle(
          "Lactose-free",
          "Only include lactose-free meals",
          _isLactoseFree,
          (p0) => setState(() {
            _isLactoseFree = p0;
          }),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        title: const Text("Filters"),
        actions: [
          IconButton(
            onPressed: () {
              widget.setFilters({
                "gluten": _isGlutenFree,
                "vegetarian": _isVegetarian,
                "vegan": _isVegan,
                "lactose": _isLactoseFree,
              });
            },
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: _index(context),
    );
  }
}
