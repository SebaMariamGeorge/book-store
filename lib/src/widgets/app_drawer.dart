import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF071129),
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Color(0xFF071129)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            CircleAvatar(radius: 28, backgroundColor: Colors.blueAccent, child: Icon(Icons.person)),
            SizedBox(height: 10),
            Text('Admin', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
            Text('admin@example.com', style: TextStyle(color: Colors.white70)),
          ]),
        ),
        ListTile(leading: const Icon(Icons.dashboard), title: const Text('Dashboard'), onTap: () => Navigator.pushReplacementNamed(context, '/dashboard')),
        ListTile(leading: const Icon(Icons.book), title: const Text('Books'), onTap: () => Navigator.pushReplacementNamed(context, '/books')),
        ListTile(leading: const Icon(Icons.settings), title: const Text('Settings'), onTap: () => Navigator.pushReplacementNamed(context, '/settings')),
        const Divider(),
        ListTile(leading: const Icon(Icons.logout), title: const Text('Logout'), onTap: () => Navigator.pushReplacementNamed(context, '/login')),
      ]),
    );
  }
}
