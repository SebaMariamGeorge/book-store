import 'package:flutter/material.dart';
import '../books/books_screen.dart';
import '../profile/profile_screen.dart';
import '../settings/settings_screen.dart';
import '../../widgets/app_drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _anim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 700));
    _anim = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _card(String title, IconData icon, Color color, VoidCallback onTap) {
    return ScaleTransition(
      scale: _anim,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          child: Container(
            width: 160,
            height: 140,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [color.withOpacity(0.95), color.withOpacity(0.6)]),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(icon, size: 42, color: Colors.white),
              const SizedBox(height: 12),
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen())), icon: const Icon(Icons.person))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          // Welcome + quick stats
          Row(children: [
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                Text('Welcome back, Admin', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                Text('Manage your bookstore, track sales and orders', style: TextStyle(color: Colors.white70)),
              ]),
            ),
            CircleAvatar(radius: 28, backgroundColor: Colors.blue.shade700, child: const Icon(Icons.book, color: Colors.white))
          ]),
          const SizedBox(height: 18),

          // Cards grid
          Wrap(spacing: 16, runSpacing: 16, children: [
            _card('Books', Icons.book, Colors.indigo, () => Navigator.pushNamed(context, '/books')),
            _card('Orders', Icons.shopping_cart, Colors.teal, () {}),
            _card('Sales', Icons.attach_money, Colors.orange, () {}),
            _card('Users', Icons.people, Colors.purple, () => Navigator.pushNamed(context, '/profile')),
          ]),

          const SizedBox(height: 18),

          // Highlights card
          Card(
            child: Container(
              padding: const EdgeInsets.all(14),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                  Text('Monthly Sales', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('\$12,430', style: TextStyle(fontSize: 20, color: Colors.white)),
                ]),
                ElevatedButton(onPressed: () {}, child: const Text('View Report'))
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
