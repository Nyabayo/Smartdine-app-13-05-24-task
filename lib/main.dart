import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(SmartDineApp());
}

class SmartDineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartDine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        // Define other routes as needed
      },
    );
  }
}
