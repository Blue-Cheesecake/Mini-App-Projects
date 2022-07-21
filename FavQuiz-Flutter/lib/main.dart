import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Favorite Quiz"),
          centerTitle: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Head Text"),
            Row(
              children: const [
                Text("Hello World!"),
                Text("This is a Test App"),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Answer 1"))
          ],
        ),
      ),
    );
  }


}



