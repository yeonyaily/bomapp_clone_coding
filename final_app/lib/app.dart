import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

final NAVY = 0xFF343A75;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(NAVY),
        backgroundColor: Colors.white,
        accentColor: Color(0xFF343A75),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Shrine shopping',
      initialRoute: '/login',
      routes: {
        '/login' : (context) => LoginPage(),
        '/home' : (context) => HomePage(),
      },
    );
  }
}