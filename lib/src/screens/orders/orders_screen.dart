import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  final List<String> orders = ["Order #101", "Order #102", "Order #103"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Orders")),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(orders[index]),
            subtitle: Text("Customer: John Doe"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Show order details
            },
          );
        },
      ),
    );
  }
}
