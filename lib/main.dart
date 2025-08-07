import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text('Bebrix'),
        ),
        body: Container(
          child: const Text('Tung Sahur💀'),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
