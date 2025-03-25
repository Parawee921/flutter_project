import 'package:flutter/material.dart';
import 'package:flutter_homework/friend_details.dart';
import 'package:flutter_homework/listview_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => const ListviewPage(),
        '/fd_dt':(context) => const FriendDetails(),
      },
    );
  }
}
