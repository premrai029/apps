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
          title: Center(child: const Text('DE-TECH')),
          backgroundColor: Color.fromARGB(232, 87, 24, 246),
        ),
      ),
    );
  }
}
