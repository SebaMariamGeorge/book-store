import 'package:flutter/material.dart';

class BillingScreen extends StatelessWidget {
  final List<String> bills = ["Bill #201", "Bill #202", "Bill #203"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Billing")),
      body: ListView.builder(
        itemCount: bills.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.receipt),
            title: Text(bills[index]),
            subtitle: Text("Amount: \$100"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Show bill details
            },
          );
        },
      ),
    );
  }
}
