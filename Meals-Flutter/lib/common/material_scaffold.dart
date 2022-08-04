import 'package:flutter/material.dart';
import 'package:meals_flutter/common/menuDrawer.dart';
import 'package:meals_flutter/views/categories.dart';
import 'package:meals_flutter/views/favorites.dart';

class MaterialScaffold extends StatefulWidget {
  const MaterialScaffold({Key? key, this.widget, this.title}) : super(key: key);

  final Widget? widget;
  final String? title;

  @override
  State<MaterialScaffold> createState() => _MaterialScaffoldState();
}

class _MaterialScaffoldState extends State<MaterialScaffold> {
  final List<Map<String, Object>> _widgetsOnTabs = [
    {
      "title": "Meals",
      "pages": const Categories(),
    },
    {
      "title": "Favorites",
      "pages": const Favorites(),
    }
  ];

  var _selectedIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(239, 255, 253, 1),
      appBar: AppBar(
        centerTitle: false,
        elevation: 5,
        title: Text(
          widget.title ?? _widgetsOnTabs[_selectedIndex]["title"] as String,
          overflow: TextOverflow.fade,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "RobotoCondensed",
              fontWeight: FontWeight.w700,
              fontSize: 28),
        ),
        actions: [
          widget.widget != null
              ? IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back_ios_new))
              : const SizedBox(),
        ],
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: widget.widget == null
          ? BottomNavigationBar(
              onTap: _selectedTab,
              currentIndex: _selectedIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: "Category"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "Favorites")
              ],
            )
          : const SizedBox.shrink(),
      body: SafeArea(
        child:
            widget.widget ?? _widgetsOnTabs[_selectedIndex]["pages"] as Widget,
      ),
    );
  }
}
