import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  final  Function updateStatus;
  final getIslocked;
  const MemberPage({super.key,required this.updateStatus,required this.getIslocked});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Member Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            bntLoginLogout(context),
            const SizedBox(height: 60),
            btnBack(context),
          ],
        ),
      ),
    );
  }
  Widget bntLoginLogout(BuildContext ctx){
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white)
      ),
      onPressed: (){
        //เมื่อคลิกปุ่ม ให้สลับสถานะการเข้าระบบจาก true -> false , false ->  true
        widget.updateStatus(!widget.getIslocked());
        setState(() {
          widget.getIslocked();
        });
      },
       child: Text(!widget.getIslocked()?'Login':'Logout'));
  }
  Widget btnBack(BuildContext ctx){
    return ElevatedButton(
    onPressed: ()=>Navigator.pop(ctx), 
    child: const Icon(Icons.home));
  }
}