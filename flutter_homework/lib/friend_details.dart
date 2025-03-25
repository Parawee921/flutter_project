import 'package:flutter/material.dart';

class FriendDetails extends StatelessWidget {
  const FriendDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args =
ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        title: const Text('ListView'),
      ),
      body: myDisplay(context,args),
    );
  }

  Widget myDisplay(BuildContext context, Map<String, dynamic> data) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: (Image.network(
              data['image'],
              fit: BoxFit.cover,
            )),
          ),const SizedBox(height: 15,),
          showFriend(context, data),
          details('Height: ${data['height']}\nWeight: ${data['weight']}\nFavorite: ${data['fav']}'),
          backButton(context)
        ],
      ),
    );
  }
  Widget showFriend(BuildContext context, Map<String, dynamic> data) =>Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name : ${data['name']}',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Text('NickName : ${data['nic']}',style: const TextStyle(fontSize: 15),)
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.favorite,color: Colors.pinkAccent,)
        ],
      )
    ],
  );
  Widget details (String fav) => Container(
    padding: const EdgeInsets.all(10),
    child:  Column(
      children: [
        const SizedBox(height: 15,),
        const SizedBox(height: 15,),
        Text(fav,style:const TextStyle(fontSize: 15),),
        const SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 5,),
            ElevatedButton(onPressed: (){}, child: const Icon(Icons.facebook,color: Colors.blue,)),
            const SizedBox(width: 10,),
            ElevatedButton(onPressed: (){}, child: const Icon(Icons.call,color: Colors.green,)),
            const SizedBox(width: 10,),
            ElevatedButton(onPressed: (){}, child: const Icon(Icons.mail,color: Colors.orangeAccent,)),
          ],
        )
      ],
    ),
  ); 
  Widget backButton(BuildContext context)=>ElevatedButton(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.purpleAccent,
    ),
    onPressed: (){
    Navigator.pop(context);
  }, child: const Icon(Icons.home));
}
