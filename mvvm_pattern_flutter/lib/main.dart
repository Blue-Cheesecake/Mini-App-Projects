import 'package:flutter/material.dart';
import 'package:mvvm_pattern_flutter/screens/home.dart';
import 'package:mvvm_pattern_flutter/view_models/users_view_model.dart';
import 'package:provider/provider.dart';

main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsersViewModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.grey,
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const Home(),
      ),
    );
  }
}
