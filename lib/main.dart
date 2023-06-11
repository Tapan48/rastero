import 'package:flutter/material.dart';
import 'trending_books.dart';
import 'bottom_nav_bar.dart';

void main() {
  // // initialize Firebase app
  // WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    title: "Dream story",
    theme:
        ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(32, 32, 32, 1)),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => TrendingBooks(),
    },
    home: BottomNavBarExample(),
  ));
}
