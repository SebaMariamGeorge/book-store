import 'package:flutter/material.dart';

class EditBookScreen extends StatelessWidget {
  final Map? book;
  const EditBookScreen({super.key, this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Book')),
      body: const Center(child: Text('Edit Book Screen')),
    );
  }
}

