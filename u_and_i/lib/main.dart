import 'package:flutter/material.dart';
import 'package:u_and_i/screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          displayMedium: TextStyle(color: Colors.white, fontFamily: 'parisienne', fontSize: 80),
          displaySmall: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w700),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 30),
          bodySmall: TextStyle(color: Colors.white,fontSize: 20.0),
        ),
      ),
      home : HomeScreen(),
    ),
  );
}
