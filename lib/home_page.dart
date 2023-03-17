import 'package:flutter/material.dart';
import 'logs_page.dart';
import 'app_bar.dart';
import 'home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const LogsPage(),
    const Text('Events'),
    const Text('Others'),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      extendBody: true,
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
      drawer: const Drawer(child: Text('yell')),
    ));
  }
}
