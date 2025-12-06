import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
import 'screens/admin/book_list.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => NeonLogin(),
  '/register': (context) => const RegisterScreen(),
  '/books': (context) => const BookListScreen(),
};

