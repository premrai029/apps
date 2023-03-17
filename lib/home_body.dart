import 'package:flutter/material.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/get.jpg',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('get it'),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ElevatedButton(
                child: const Text('get it'),
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('get it'),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
