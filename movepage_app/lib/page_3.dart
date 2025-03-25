import 'dart:math';

import 'package:flutter/material.dart';
import 'package:movepage_app/home_page.dart';
import 'package:movepage_app/page_2.dart';

class Page3 extends StatelessWidget {
  int num;
  String text;
  bool boolean;
  var rnd = Random();
  Page3(
      {super.key,
      required this.num,
      required this.text,
      required this.boolean});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page3'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Page 3\n$num,$text,$boolean',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            //btnBack(context),
            btnHomepage(context)
          ],
        ),
      ),
    );
  }
  /*Widget btnBack(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pop(
        ctx,
        MaterialPageRoute(builder: (ctx)=>Page2(id : 16)),
      ), child: const Text('<< Back'));*/

  /* Widget btnHomepage(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pushAndRemoveUntil(
        ctx,
        MaterialPageRoute(builder: (ctx)=>const HomePage()),
        (Route<dynamic>route) => false
      ), child: const Text('<< HomePage'));*/

      
  Widget btnHomepage(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pop(ctx, rnd.nextInt(100)),
      child: const Text('<< Back'));
}
