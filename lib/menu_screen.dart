import 'package:flutter/material.dart';
import 'checkout_screen.dart';

class MenuScreen extends StatelessWidget {
  final List<Map<String, String>> menuItems = [
    {"name": "Burger", "image": "https://example.com/burger.jpg"},
    {"name": "Pizza", "image": "https://example.com/pizza.jpg"},
    // Add more items with real or placeholder images
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(menuItems[index]["image"]!, height: 50.0),
            title: Text(menuItems[index]["name"]!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckoutScreen(itemName: menuItems[index]["name"]!)),
              );
            },
          );
        },
      ),
    );
  }
}
