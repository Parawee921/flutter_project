import 'package:flutter/material.dart';
import 'package:movepage_app/page_2.dart';
import 'package:movepage_app/page_3.dart';

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
      onPressed: () => Navigator.push(
            ctx,
            MaterialPageRoute(builder: (ctx) => Page2(id: 16)),
          ).then((values){
            var val = values ??[0,'zero'];
            var v1 = val[0];
            var v2 = val[1];
            myAlert(ctx, 'ข้อมูลที่ส่งกลับ\n$v1,$v2');
          }),
      child: const Text('Go to Page2 >>'));
  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.push(
              ctx,
              MaterialPageRoute(
                  builder: (ctx) => Page3(
                        num: 1000,
                        text: 'Parawee',
                        boolean: true,
                      )))
          .then((value) => myAlert(ctx, 'ข้อมูลที่ส่งกลับคือ :$value')),
      child: const Text('Go to Page3 >>'));

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
