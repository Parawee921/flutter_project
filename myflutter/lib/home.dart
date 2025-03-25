import 'package:flutter/material.dart';
import 'package:myflutter/member.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoked = false;// true เข้าสู่ระบบ flase ออกจากระบบ
  var _icon = Icons.lock;
  var _text = 'กรุณาเข้าสู่ระบบ';
  //call Back Function
  bool getIslocked() =>_isLoked;
  //call Back Function
  
  void updateStatus(value){
    setState(() {
      if(!value){
        _icon = Icons.lock;
        _text = 'กรุณาเข้าสู่ระบบ';
      }
      else{
        _icon = Icons.lock_open;
        _text = 'ท่านได้เข้าสู่ระบบ';
      }
      _isLoked = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Icon(_icon,size: 64,),
            Text(_text),
            const SizedBox(height: 60,),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => MemberPage(updateStatus: updateStatus, getIslocked: getIslocked))
              );
            }, 
          child: const Text(' Member ')),
          ],
        ),
      ),
    );
  }

}