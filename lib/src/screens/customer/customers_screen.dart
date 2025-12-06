import 'package:flutter/material.dart';

class CustomersScreen extends StatelessWidget {
  final List<String> customers = ["Alice", "Bob", "Charlie"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Customers")),
      body: ListView.builder(
        itemCount: customers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(customers[index]),
            subtitle: Text("Orders: 5"),
            onTap: () {
              // Show customer details
            },
          );
        },
      ),
    );
  }
}
