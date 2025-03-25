import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text('WELCOME TO MYPP')
          ],
        ),
      ),
    );
  }
}