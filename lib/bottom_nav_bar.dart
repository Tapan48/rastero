import 'package:creative_read/rich.dart';
import 'package:creative_read/home.dart';
import 'package:creative_read/trending_books.dart';
import 'package:flutter/material.dart';

class BottomNavBarExample extends StatefulWidget {
  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    TrendingBooks(),
    Book1(),
  ];

  final List<String> _titles = [
    'Home',
    'Trending books',
    'book1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[500],
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: _titles[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: _titles[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: _titles[2],
          ),
        ],
      ),
    );
  }
}

// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//     );
//   }
// }

// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//     );
//   }
// }

// class Screen3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//     );
//   }
// }
