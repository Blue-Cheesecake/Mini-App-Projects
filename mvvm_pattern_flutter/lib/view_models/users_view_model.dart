import 'package:flutter/material.dart';
import 'package:mvvm_pattern_flutter/models/user_error.dart';
import 'package:mvvm_pattern_flutter/models/user_model.dart';
import 'package:mvvm_pattern_flutter/repos/api_status.dart';
import 'package:mvvm_pattern_flutter/repos/user_services.dart';

class UsersViewModel extends ChangeNotifier {
  var _loading = false;
  List<User> _usersModelList = [];
  UserError? _userError;

  bool get loading => _loading;

  UserError? get userError => _userError;

  List<User> get usersModelList => _usersModelList;

  setLoading(value) {
    _loading = value;
    notifyListeners();
  }

  setUserError(UserError value) {
    _userError = value;
  }

  setUsersModelList(List<User> value) {
    _usersModelList = value;
  }

  void getUser() async {
    setLoading(true);
    var res = await UserService.getUsers();
    if (res is Success) {
      setUsersModelList(res.response as List<User>);
    }
    if (res is Failure) {
      setUserError(
          UserError(code: res.code, message: res.errorResponse as String));
    }
    setLoading(false);
  }
}
