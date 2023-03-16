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
          backgroundColor: const Color.fromARGB(232, 122, 32, 233),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: const Text('yegd debfube c ce'),
        ),
      ),
    );
  }
}
