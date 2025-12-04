import 'package:flutter/material.dart';

class OnlineBookingScreen extends StatelessWidget {
  const OnlineBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Online Booking')),
      body: const Center(child: Text('Online Booking Screen')),
    );
  }
}
