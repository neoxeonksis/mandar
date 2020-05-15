import 'package:flutter/material.dart';

class LoginState with ChangeNotifier {
  bool _login = true;

  bool isLogin() => _login;

  void login() async {
    _login = true;
    notifyListeners();
  }

  void logout() {
    _login = false;
    notifyListeners();
  }
}
