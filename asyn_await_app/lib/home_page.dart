import 'package:asyn_await_app/page_2.dart';
import 'package:asyn_await_app/page_3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Navigation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text('Home Page'),
            const SizedBox(
              height: 60,
            ),
            btnPage2(context),
            btnPage3(context),
          ],
        ),
      ),
    );
  }

  Widget btnPage2(BuildContext ctx) => TextButton(
      onPressed: () async {
        var value = await Navigator.pushNamed(
            ctx, '/page2',arguments: 456);
            myAlert (ctx,'ข้อมูลที่ส่งกลับคืน คือ $value');
      },
      child: const Text('Go to Page2'));

   Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () async {
        var value = await Navigator.pushNamed(
            ctx,'/page3',arguments: {'num':555,'text':'hahaha','boolearn':false})??0;
            myAlert (ctx,'ข้อมูลที่ส่งกลับคืน คือ ${value}');
      },
      child: const Text('Go to Page3'));
    
   void myAlert(BuildContext ctx, String msg) {
    showDialog(
        context: ctx,
        builder: (ctx) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: const Text('Ok'))
              ],
              content: Text(msg),
            ));
   }
}
