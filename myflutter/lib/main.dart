import 'package:flutter/material.dart';
import 'package:myflutter/home.dart';
import 'package:myflutter/level1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}
