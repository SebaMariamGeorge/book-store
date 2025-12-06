import 'package:flutter/material.dart';
import 'add_book_screen.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  // sample data
  final List<Map<String, String>> sample = const [
    {'title': 'The Alchemist', 'author': 'Paulo Coelho', 'cover': ''},
    {'title': 'Clean Code', 'author': 'Robert C. Martin', 'cover': ''},
    {'title': 'Atomic Habits', 'author': 'James Clear', 'cover': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
        actions: [IconButton(onPressed: () => Navigator.pushNamed(context, '/add_book'), icon: const Icon(Icons.add))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: sample.length,
          itemBuilder: (context, i) {
            final book = sample[i];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Container(width: 50, height: 70, decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(6))),
                title: Text(book['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(book['author']!),
                trailing: IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
              ),
            );
          },
        ),
      ),
    );
  }
}
