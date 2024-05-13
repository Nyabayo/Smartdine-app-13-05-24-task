import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  final String itemName;

  CheckoutScreen({required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have selected: $itemName"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement checkout logic here
                Navigator.pop(context);
              },
              child: Text('Confirm Order'),
            ),
          ],
        ),
      ),
    );
  }
}
