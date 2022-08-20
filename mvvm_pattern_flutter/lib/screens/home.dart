import 'package:flutter/material.dart';
import 'package:mvvm_pattern_flutter/view_models/users_view_model.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  _ui(BuildContext context, UsersViewModel usersViewModel) {
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
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(userModelList[index].name),
                subtitle: Text(userModelList[index].username),
              ),
              const Divider(),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    UsersViewModel usersViewModel = context.watch<UsersViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("MVVM Design Pattern"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _ui(context, usersViewModel),
            ],
          ),
        ),
      ),
    );
  }
}
