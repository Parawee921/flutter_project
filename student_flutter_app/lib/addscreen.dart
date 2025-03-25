import 'package:flutter/material.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({super.key});

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  final _formKey = GlobalKey<FormState>();
  String _id ='',_name = '';
  int _score = 0;
  String? _gender ;

  final List<String> titleList = ['นาย','นางสาว'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เพิ่มบันทึกข้อมูลนักศึกษา'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0),
          borderRadius:  const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
          )
        ),
        child: Column(
          children: [
            const SizedBox(height: 30,),
            const Text('เพิ่มรายชื่อนักศึกษา',
            style: TextStyle(
              fontSize: 40,
              color:Colors.black,
              fontWeight: FontWeight.bold, 
            ),
            ),
            const SizedBox(height: 20,),
            Form(
            key:_formKey,
             child: Column(
              children: [
                TextFormField(
                  maxLength: 13,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Colors.black
                  ),
                  decoration: const InputDecoration(
                    label: Text('กรอกรหัสนักศึกษา',
                    style: 
                    TextStyle(fontSize: 16),)
                  ),
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return 'กรุณาป้อนรหัส';
                    }
                    return null;
                  },
                  onSaved: (value){
                    _id = value.toString();
                  },
                ),
                const SizedBox(height: 20,),
                DropdownButtonFormField(
                  value: _gender,
                  style:  const TextStyle(
                  color:Color.fromARGB(255, 81, 185, 236) ),
                  decoration: const InputDecoration(
                    label: Text('คำนำหน้า',style: TextStyle(
                      fontSize: 16
                    ),)
                  ),
                  items: titleList.map((item){
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item,style: const TextStyle(
                        color: Colors.blueGrey
                      ),));
                  }).toList(),
                   onChanged: (value){
                    setState(() {
                      _gender = value!;
                    });
                   },
                   validator: (value){
                    if(value == null){
                      return'โปรดเลือกคำนำหน้า';
                    }
                    return null;
                   },
                   ),
                   const SizedBox(height: 20,),
                   TextFormField(
                    maxLength: 20,
                    style:  const TextStyle(),
                    decoration: const InputDecoration(
                      label: Text('ชื่อ-นามสกุล',style: TextStyle(
                        fontSize: 16
                      ),)
                    ),
                    validator: (value) {
                      if(value == null){
                        return'กรุณาป้อนชื่อ-นามสกุล';
                      }
                      return null;
                    },
                    onSaved: (value){
                      _name = value!;
                    },
                   ),
                   const SizedBox(height: 20,),
                   TextFormField( 
                    keyboardType: TextInputType.number,
                    style:  const TextStyle(),
                    decoration: const InputDecoration(
                      label: Text('คะแนน',style: TextStyle(
                        fontSize: 16
                      ),)
                    ),
                    validator: (value) {
                      if(value == null){
                        return'กรุณาป้อนคะแนน';
                      }
                      return null;
                    },
                    onSaved: (value){
                      _score = int.parse(value.toString());
                    },),
                    const SizedBox(height: 30,),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){}, child: const Text('บันทึก',style: TextStyle(color: Colors.black),))
             ],)
            ),
          ],
        ),
      ),
    );
  }
}