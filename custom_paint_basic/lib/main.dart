import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'pages/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1000, 800),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
    title: 'Custom Paint',
    minimumSize: Size(1000, 800),
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const AppWD());
}

class AppWD extends StatelessWidget {
  const AppWD({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Paint',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const _Homepage(),
    );
  }
}

class _Homepage extends StatefulWidget {
  const _Homepage({Key? key}) : super(key: key);

  @override
  State<_Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<_Homepage> with SingleTickerProviderStateMixin {
  final _pages = <Widget>[
    const Line(),
    const Rectangle(),
    const Circle(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('Line'),
            ),
            Tab(
              child: Text('Circle'),
            ),
            Tab(
              child: Text('Rectacgle'),
            ),
          ]),
        ),
        body: TabBarView(children: _pages),
      ),
    );
  }
}
