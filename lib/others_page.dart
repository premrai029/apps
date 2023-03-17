import 'package:flutter/material.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Others'),
        ),
        body: const Center(child: Text('here i stay')));
  }
}
