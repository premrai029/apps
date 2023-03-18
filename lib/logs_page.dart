import 'package:flutter/material.dart';

class LogsPage extends StatelessWidget {
  const LogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('make it'),
        ),
        body: const Center(child: Text('here i am here i stay')));
  }
}
