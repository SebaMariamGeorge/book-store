import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          const CircleAvatar(radius: 40, backgroundColor: Colors.blueAccent, child: Icon(Icons.person, size: 40)),
          const SizedBox(height: 12),
          const Text('Admin', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('admin@example.com', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 20),
          Card(child: ListTile(title: const Text('Role'), subtitle: const Text('Administrator'))),
          const SizedBox(height: 10),
          Card(child: ListTile(title: const Text('Joined'), subtitle: const Text('Jan 2025')))
        ]),
      ),
    );
  }
}
