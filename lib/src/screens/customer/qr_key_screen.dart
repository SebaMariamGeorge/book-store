import 'package:flutter/material.dart';

class QrKeyScreen extends StatelessWidget {
  final String data;
  const QrKeyScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR Key')),
      body: Center(child: Text('QR Key: $data')),
    );
  }
}
}

