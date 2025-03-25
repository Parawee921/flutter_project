import 'package:buttom_navi_app/productDetail.dart';
import 'package:flutter/material.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text('Product Page'),
            const SizedBox(
              height: 60,
            ),
            btnDetails(context)
          ],
        ),
      ),
    );
  }
  Widget btnDetails(BuildContext context){
    return TextButton(onPressed: () => Navigator.push(context,
    MaterialPageRoute(builder: (context) => const ProductDetail())),
    child: const Text('Product Details >>>'));
  }
}