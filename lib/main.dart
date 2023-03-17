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
            title: const Center(child: Text('DE-TECH')),
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/uio.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ), //removes shadow from appbar
          ),
          body: Stack(children: [
            Image.asset(
              'assets/images/get.jpg',
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
