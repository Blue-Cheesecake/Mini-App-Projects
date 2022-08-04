import 'package:flutter/material.dart';
import 'package:meals_flutter/constants/route_paths.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  Widget _menuItem(BuildContext context, IconData icon, String text,
      void Function() tabHandler) {
    return InkWell(
      onTap: tabHandler,
      splashColor: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.blueAccent,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(239, 255, 253, 1),
      child: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: 150,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Cooking Up!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          _menuItem(
            context,
            Icons.restaurant_menu,
            "Meals",
            () => Navigator.of(context).pushNamed(RoutePaths.initial),
          ),
          _menuItem(
            context,
            Icons.settings,
            "Filter",
            () => Navigator.of(context).pushNamed(RoutePaths.filters),
          )
        ],
      ),
    );
  }
}
