import 'package:flutter/material.dart';
import 'home.dart';
import 'trending_books.dart';
import 'bottom_nav_bar.dart';

void main() {
  // // initialize Firebase app
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => HomePage(),
      'trending_books': (context) => TrendingBooks(),
    },
    home: BottomNavBarExample(),
  ));
}
