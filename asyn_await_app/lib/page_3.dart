import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;
    var argsNap = args as Map<String,dynamic>;

    var v1 = argsNap['num'];
    var v2 = argsNap['text'];
    var v3 = argsNap ['boolearn'];
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
              'Page 3\nNum : $v1\n Text : $v2 ,\n Boolearn : $v3',
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

  Widget btnHomepage(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pop(ctx, [123, 'one - two -three']),
      child: const Text('<< Back'));
}
