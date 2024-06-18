import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primaryColor: Colors.blue,
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final tiles = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
  ];

  void _onReorder(int oldIndex, int newIndex) {
    final r = tiles.removeAt(oldIndex);
    if (newIndex >= tiles.length) {
      tiles.add(r);
      return;
    }
    tiles.insert(newIndex, r);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ReorderableListView.builder(
        itemBuilder: (context, index) => ListTile(
          key: Key(index.toString()),
          title: Center(child: Text(tiles[index])),
        ),
        itemCount: tiles.length,
        onReorder: _onReorder,
        padding: const EdgeInsets.symmetric(horizontal: 4),
      ),
    );
  }
}
