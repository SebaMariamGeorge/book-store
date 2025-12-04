import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static String baseUrl = "http://10.0.2.2/bookstore_api";

  static Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login.php'),
      body: jsonEncode({"email": email, "password": password}),
    );

    return jsonDecode(response.body);
  }
}