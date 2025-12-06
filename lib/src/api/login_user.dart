import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String apiUrl = "http://10.0.2.2/bookstore_api/login.php";
  // If using real device -> use your PC IP example: http://192.168.1.5/bookstore_api/login.php

  static Future<bool> login(String email, String password) async {
    var response = await http.post(Uri.parse(apiUrl), body: {
      "email": email,
      "password": password,
    });

    var data = jsonDecode(response.body);

    if (data["status"] == "success") {
      return true;
    } else {
      return false;
    }
  }
}
