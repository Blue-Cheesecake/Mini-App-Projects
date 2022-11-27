import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/implicit_animations/align_animation.dart';
import 'package:flutter_animations/screens/implicit_animations/container_animation.dart';
import 'package:flutter_animations/screens/implicit_animations/list_animation.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  static const routeName = "/homepage";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var implicitAnimations = [
    {"name": "Animated Align", "route": AlignAnimation.routeName},
    {"name": "Animated Container", "route": ContainerAnimation.routeName},
    {"name": "Animated List", "route": ListAnimation.routeName},
  ];

  Widget _goPageButton(String name, String targetRoute) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamed(targetRoute),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _dropdownContent(List<Map<String, String>> items) {
    return SizedBox(
      child: DropdownButton(
        icon: const Icon(Icons.arrow_downward),
        iconSize: 20,
        isExpanded: true,
        hint: const Text(
          "Implicit Animation",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        items: items.map((e) {
          return DropdownMenuItem(
            value: e,
            child: _goPageButton(
              e['name']!,
              e['route']!,
            ),
          );
        }).toList(),
        onChanged: (Map<String, String>? newVal) {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Animations',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                _dropdownContent(implicitAnimations),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
