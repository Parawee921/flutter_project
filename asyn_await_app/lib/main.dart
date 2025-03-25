import 'package:asyn_await_app/home_page.dart';
import 'package:asyn_await_app/page_2.dart';
import 'package:asyn_await_app/page_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/page2':(context) => const Page2(),
        '/page3':(context) => const Page3()
      },
    );
  }
}
