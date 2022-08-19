import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm_pattern_flutter/repos/api_status.dart';
import 'package:mvvm_pattern_flutter/utils/constants/http_status_codes.dart';
import 'package:mvvm_pattern_flutter/utils/constants/urls.dart';

class UserService {
  static Future<Object> getUsers() async {
    try {
      var url = Uri.parse(userJSON);
      var response = await http.get(url);
      if (response.statusCode == successCODE) {
        return Success(code: successCODE, response: response);
      }
      return Failure(
          code: invalidResponseCODE, errorResponse: "Invalid Response");
    } on HttpException {
      return Failure(code: noInternetCODE, errorResponse: "No Internet");
    } on FormatException {
      return Failure(code: invalidFormatCODE, errorResponse: "Invalid Format");
    } catch (e) {
      return Failure(code: unknownErrorCODE, errorResponse: "Unknown Error");
    }
  }
}
