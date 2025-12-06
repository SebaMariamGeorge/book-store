import 'package:flutter/material.dart';

class AddBookScreen extends StatefulWidget {
  const AddBookScreen({Key? key}) : super(key: key);

  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  final titleCtrl = TextEditingController();
  final authorCtrl = TextEditingController();
  final priceCtrl = TextEditingController();

  @override
  void dispose() {
    titleCtrl.dispose();
    authorCtrl.dispose();
    priceCtrl.dispose();
    super.dispose();
  }

  void save() {
    // implement saving to DB or API
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Book saved (mock)')));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Book')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(controller: titleCtrl, decoration: const InputDecoration(labelText: 'Title')),
          const SizedBox(height: 10),
          TextField(controller: authorCtrl, decoration: const InputDecoration(labelText: 'Author')),
          const SizedBox(height: 10),
          TextField(controller: priceCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Price')),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: save, child: const Text('Save')),
        ]),
      ),
    );
  }
}
