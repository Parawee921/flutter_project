import 'package:buttom_navi_app/help.dart';
import 'package:buttom_navi_app/homepage.dart';
import 'package:buttom_navi_app/infor.dart';
import 'package:buttom_navi_app/shoppage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage()
    );
  }
}

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _navItemIndex = 0 ;//ลำดับที่ของปุ่มที่เลือก
  var pages = <Widget> [const Homepage(), const Shoppage(), const Informationpage(), const Helppage() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('ButtomNavigationBar'),
        centerTitle: true,
      ),
      body: pages[_navItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.orangeAccent,//สีพื้นหลัง
        fixedColor: Colors.white,//สีปุ่มที่ถูกเลือก
        /*type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.yellow,
        unselectedItemColor: Colors.orangeAccent,*/

        showSelectedLabels: true,//แสดงข้อความปุ่มที่ถูกเลือก
        showUnselectedLabels: true,//แสดงข้อความบนปุ่มที่ไม่ถูกเลือก
        currentIndex: _navItemIndex,

        items:btnNavItem(),
        onTap: (index){
          setState(() { //เมื่อมีการคลิกที่ปุ่ม
            _navItemIndex = index;
          });
        },
        ),
    );
  }
  List<BottomNavigationBarItem>btnNavItem(){
    var iconItem = [Icons.home,Icons.shopping_cart,Icons.person,Icons.help];
    var label = ['Home', 'Shop','Information','Help'];
    var bgColorItem = [Colors.white,Colors.white,Colors.white,Colors.white];

    List<BottomNavigationBarItem> mybtn;

    BottomNavigationBarItem createItem(index){
      return BottomNavigationBarItem(icon: Icon(iconItem[index]),
      label: label[index],
      backgroundColor: bgColorItem[index],
      );
      
    }
    mybtn = List.generate(iconItem.length,createItem);
    return mybtn;

  }
}
