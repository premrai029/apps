import 'package:flutter/material.dart';
import 'events_page.dart';
import 'others_page.dart';
import 'logs_page.dart';
import 'app_bar.dart';
import 'home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomePageBody(),
    const LogsPage(),
    const EventsPage(),
    const OthersPage(),
  ];
  void onTabTapped(int index) {
    if (_currentIndex == index) {
      //navigate to home screen if tapped index is equal to the value of current index
      Navigator.of(context).popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: _children[_currentIndex],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
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
    );
  }
}
