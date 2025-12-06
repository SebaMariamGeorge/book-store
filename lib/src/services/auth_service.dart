class AuthService {
  // Replace this with your actual HTTP call.
  static Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 700)); // simulate network
    // TEMP: allow admin@example.com / 123456
    if (email == 'admin@example.com' && password == '123456') return true;
    // you could call your PHP/MySQL API here and return result
    return false;
  }
}
