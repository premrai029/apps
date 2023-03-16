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
          body: Stack(children: [
            Image.asset(
              'assets/images/one.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(100),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('get it'),
                  ),
                ))
              ],
            ),
          ])),
    );
  }
}
