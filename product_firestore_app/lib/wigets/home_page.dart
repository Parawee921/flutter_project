import 'package:flutter/material.dart';
import 'package:product_firestore_app/wigets/product_list.dart';
import 'package:product_firestore_app/wigets/product_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('Product List') ,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context){
                 return ProductPopup();
                });
            },
            icon: const Icon(Icons.add))
        ],
      ),
      body: const ProductList()
    );
  }
}