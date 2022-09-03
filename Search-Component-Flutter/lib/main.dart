import 'package:flutter/material.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    const textFieldBorderRad = 10.00;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff5f5f5),
        title: Text(
          'Search Box',
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 3.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(textFieldBorderRad),
                  ),
                  elevation: 10,
                  child: TextField(
                    controller: inputController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Spotlight Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(textFieldBorderRad),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onSubmitted: (inputString) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
