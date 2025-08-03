// lib/main.dart
import 'package:flutter/material.dart';
import 'ui/menu_screen.dart';

void main() {
  runApp(WazaLudoApp());
}

class WazaLudoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waza Ludo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MenuScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
