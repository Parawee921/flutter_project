import 'package:flutter/material.dart';

class Editscreen extends StatefulWidget {
  final int index;//ค่าคีย์รายการที่ต้องการแก้ไข
  const Editscreen({super.key,required this.index});

  @override
  State<Editscreen> createState() => _EditscreenState();
}

class _EditscreenState extends State<Editscreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}