import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight:
                  200, // Set the height of the app bar when expanded
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/get.jpg', // Set the image path here
                  fit: BoxFit
                      .cover, // Set the image fit to cover the entire app bar
                ),
                title: const Text(
                    'MyApp'), // Add any other widgets you want to show on the app bar
              ),
            ),
            const SliverFillRemaining(
              child: Center(
                child: Text(
                  'Hello, World!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
