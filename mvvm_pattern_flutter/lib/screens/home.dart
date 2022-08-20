import 'package:flutter/material.dart';
import 'package:mvvm_pattern_flutter/view_models/users_view_model.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  _ui(BuildContext context, UsersViewModel usersViewModel) {
    usersViewModel.getUser();
    if (usersViewModel.loading) {
      return const Text("Loading");
    }
    final userError = usersViewModel.userError;
    if (userError != null) {
      return Text(userError.message);
    }

    List<User> userModelList = usersViewModel.usersModelList;

    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: userModelList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Text(
              userModelList[index].name,
              style: const TextStyle(color: Colors.black),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();

    Future.delayed(Duration.zero, () async {
      usersViewModel.getUser();
    });
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("MVVM Design Pattern"),
      ),
      body: Column(
        children: [
          _ui(context, usersViewModel),
        ],
      ),
    );
  }
}
