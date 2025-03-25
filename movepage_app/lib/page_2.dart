import 'package:flutter/material.dart';
import 'package:movepage_app/page_3.dart';

class Page2 extends StatelessWidget {
  int id;
  Page2({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text('Page 2 id:$id'),
            const SizedBox(
              height: 60,
            ),
            btnPage3(context),
            btnBack(context),
          ],
        ),
      ),
    );
  }

  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.push(
            ctx,
            MaterialPageRoute(
                builder: (ctx) => Page3(
                      num: 1000,
                      text: 'Parawee',
                      boolean: true,
                    )),
          ).then((value) => myAlert(ctx, 'ข้อมูลที่ส่งกลับคือ :$value')),
      child: const Text('Go to Page3 >>'));

  Widget btnBack(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pop(ctx,[456,'four - five- six'],
            
          ),
      child: const Text('<< Back'));
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
