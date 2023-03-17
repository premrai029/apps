import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: const Center(child: Text('DE-TECH')),
            backgroundColor: Colors.transparent,
            elevation: 0, //removes shadow from appbar
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/uio.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined),
                label: 'My Logs',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rocket_launch_outlined),
                label: 'Events',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.tips_and_updates_outlined),
                label: 'Others',
              ),
            ],
          ),
          body: Stack(children: [
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
                      onPressed: () {},
                      child: const Text('get it'),
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
                      onPressed: () {},
                      child: const Text('get it'),
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
                )
              ],
            ),
          ])),
    );
  }
}
