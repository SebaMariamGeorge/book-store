import 'package:flutter/material.dart';

// Auth Screens
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';

// Admin Screens
import 'screens/admin/admin_dashboard.dart';
import 'screens/admin/manage_books.dart';
import 'screens/admin/add_book.dart';
import 'screens/admin/edit_book.dart';

// Customer Screens
import 'screens/customer/customer_home.dart';
import 'screens/customer/online_booking.dart';
import 'screens/customer/qr_key_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());

    // Admin Routes
      case '/admin/dashboard':
        return MaterialPageRoute(builder: (_) => AdminDashboard());
      case '/admin/manage_books':
        return MaterialPageRoute(builder: (_) => ManageBooksScreen());
      case '/admin/add_book':
        return MaterialPageRoute(builder: (_) => AddBookScreen());
      case '/admin/edit_book':
        return MaterialPageRoute(
            builder: (_) => EditBookScreen(book: args as Map?));

    // Customer Routes
      case '/customer/home':
        return MaterialPageRoute(builder: (_) => CustomerHomeScreen());
      case '/customer/online_booking':
        return MaterialPageRoute(builder: (_) => OnlineBookingScreen());
      case '/customer/qr_key':
        return MaterialPageRoute(
            builder: (_) => QrKeyScreen(data: args as String? ?? ''));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}
