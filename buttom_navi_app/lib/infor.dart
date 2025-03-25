import 'package:buttom_navi_app/memberlogin.dart';
import 'package:flutter/material.dart';

class Informationpage extends StatelessWidget {
  const Informationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text('Information Page'),
            const SizedBox(
              height: 60,
            ),
            btnLogin(context)
          ],
        ),
      ),
    );
  }
   Widget btnLogin(BuildContext context){
    return TextButton(onPressed: () => Navigator.push(context,
    MaterialPageRoute(builder: (context) => const MemberLogin())),
    child: const Text('Member Login >>>'));
  }
}