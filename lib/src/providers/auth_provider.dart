import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? token;
  bool isLoggedIn = false;

  void login(String t) {
    token = t;
    isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    token = null;
    isLoggedIn = false;
    notifyListeners();
  }
}
