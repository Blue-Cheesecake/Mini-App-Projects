import 'package:flutter/material.dart';

final class LoginAssets {
  LoginAssets._();

  static Widget get loginTitleImage => Image.asset(
        'assets/images/building_an_app.png',
        height: 290,
        fit: BoxFit.cover,
      );
}
