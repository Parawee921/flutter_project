import 'dart:math';

import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  var rnd = Random();
  var leadingIcons = [
    Icons.face_6,
    Icons.face,
    Icons.face_3,
    Icons.face,
    Icons.face,
  ];
  var friend = [
    'Thanadol Singthuean',
    'Nonkit Seakhow',
    'Jidapha kaewsakun',
    'Natheepat Thueankwa',
    'Jakkarin Techasirikulchai',
  ];
  var nickname = ['GodzaJoox', 'Film', 'Mime', 'Tee', 'J'];
  final List<Map<String, dynamic>> data = [
    {
      'image':
          'https://scontent.fbkk29-8.fna.fbcdn.net/v/t39.30808-1/307990377_2578755855595244_2911540551157136463_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=105&ccb=1-7&_nc_sid=e99d92&_nc_ohc=JvwKxCcSeBUQ7kNvgE5y-nS&_nc_oc=Adm7YN1FzY4B8-5CylurTGeQf3BIrj8nMFfXuaXAyqEjaXK5sIXnNVhQQFnC6Nl4ziu3xZq07x2h_hQ1Qww2J5_S&_nc_zt=24&_nc_ht=scontent.fbkk29-8.fna&_nc_gid=imIi4Xb5eSVawFbRhoAoMA&oh=00_AYGj5I4VSbbwB0XQ4mkEpx8vw78PDiaQk_9rlXZ_YLDMgQ&oe=67E83E30',
      "name": 'Thanadol Singthuean',
      'nic': 'GodzaJoox',
      "height": '175 cm',
      "weight": '85 kg',
      'fav': 'ชอบเล่นเกมหนักหน่วง'
    },
    {
      'image':
          'https://scontent.fbkk29-8.fna.fbcdn.net/v/t39.30808-1/362920421_1997153567299257_797612342820848950_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=102&ccb=1-7&_nc_sid=e99d92&_nc_ohc=phKXrYD2ebEQ7kNvgFB852M&_nc_oc=AdkoeZPIXfhw3BlEkfjmg5ouZTIOvSOfHWb31bSg3-HjbsC15vkjyQ13M9j906NBnwP4lsRczpcNmn60b2uyjidD&_nc_zt=24&_nc_ht=scontent.fbkk29-8.fna&_nc_gid=DrZcSLnbh9BwHzo9_XtLcg&oh=00_AYHXZwIm9r2n1EOu4jTnhkaq7gMlgmqE7jhpA7kqcC2TRQ&oe=67E82BA1',
      "name": 'Nonkit Seakhow',
      'nic': 'Film',
      "height": '171 cm',
      "weight": '54 kg',
      'fav': 'ชอบแมว นอนในห้องเรียน'
    },
    {
      'image':
          'https://scontent.fbkk29-8.fna.fbcdn.net/v/t39.30808-1/481121991_1679352199454891_6574050074229644136_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=102&ccb=1-7&_nc_sid=e99d92&_nc_ohc=QbiAKo-hu-4Q7kNvgH0KpAE&_nc_oc=AdmoguWsyYN5YWSzvt7kjsyWOUxXKjrdpKcv1j7XjC4A2Xx2-YHGW7qMXSSsFx36_--B5aIChHP2gNBJqpKi-4a1&_nc_zt=24&_nc_ht=scontent.fbkk29-8.fna&_nc_gid=lt-jTGNI_c1DefduzKECFQ&oh=00_AYEfysP_LRpSgsP1LRVcafEFJlQ4G0JDOeAJjwA8AhMfng&oe=67E8361D',
      "name": 'Jidapha Kaewsakun',
      'nic': 'Mime',
      "height": '172 cm',
      "weight": '70 kg',
      'fav': 'ชอบอ่านนิยาย ชอบกิต'
    },
    {
      'image':
          'https://scontent.fbkk29-7.fna.fbcdn.net/v/t39.30808-1/318899666_1300186363889608_6603733509399993435_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=106&ccb=1-7&_nc_sid=e99d92&_nc_ohc=CnPc0K0XJy4Q7kNvgGdzJa4&_nc_oc=AdkrBuy-tRDu4UyYkxn26GfoSwcdp0VcMUmSKMTGbOrQrWsW2cbnEryFgY0hLWlKwaG8aKlR2RyQOg0R5ZxYKe0d&_nc_zt=24&_nc_ht=scontent.fbkk29-7.fna&_nc_gid=cAZt6AIDz9iANT_4uR_pbg&oh=00_AYHwdAnOLhhvGytQ2SIiQML6DnS3AN-26U0qj5M6FS9_EA&oe=67E83364',
      "name": 'Natheepat Thueankwa',
      'nic': 'Tee',
      "height": '182 cm',
      "weight": '97 kg',
      'fav': 'ชอบฟังเพลง'
    },
    {
      'image':
          'https://scontent.fbkk29-6.fna.fbcdn.net/v/t39.30808-1/448544865_1726670634807385_2989704535286611902_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=109&ccb=1-7&_nc_sid=e99d92&_nc_ohc=0lhzAuYb3ZQQ7kNvgFecyED&_nc_oc=AdnXOst9SGLIV7kdcx6xAmVSMankQqSjShw360cjE9U1CpMNMVZhRH-CrppRSdbd-aCvIKrvOdv3k68u37rhJOVi&_nc_zt=24&_nc_ht=scontent.fbkk29-6.fna&_nc_gid=C_AepCDXIZlX0lOdwBcFbw&oh=00_AYGWBouqn8SBQtwxBlirwp1DrBuHrx2GmJc0nTezLKJ0nQ&oe=67E84DE8',
      "name": 'Jakkarin Techasirikulchai',
      'nic': 'J',
      "height": '183 cm',
      "weight": '83.5 kg',
      'fav': 'วาดรูป'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          title: const Text('ListView'),
          actions: [
        IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.mark_chat_unread,color: Colors.black,),
        ),
      ],
        ),
        body: myGrid(context),);
  }
  Widget myGrid(BuildContext contex){
     return GridView.builder(itemCount: data.length,
     padding: const EdgeInsets.all(10)
     ,gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
     childAspectRatio: 3/4,
     crossAxisSpacing: 5,
     mainAxisSpacing: 5
     ), itemBuilder: (contex,index) => ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: buildTile(context, data[index]),
     ));
  }

  Widget buildListItem(BuildContext ctx, int index) => ListTile(
        leading: Icon(
          leadingIcons[index],
          size: 45,
        ),
        title: Text(
          friend[index],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(nickname[index]),
        trailing: trailingWiget(ctx, index),
        iconColor: Colors.purple,
        onTap: () {
          //alert(ctx, '${data[index]}');
        },
      );
  Widget trailingWiget(BuildContext ctx, int index) {
    return const Icon(Icons.arrow_forward_ios);
  }

  Widget buildTile(BuildContext context, Map<String, dynamic> data) => GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Name : ${data['name']}'),
        subtitle: Text('Nickname : ${data['nic']}'),
        trailing: InkWell(
          child: const Icon(
            Icons.zoom_in,
            size: 32,
            color: Colors.black,
          ),
          onTap: () => {
            Navigator.pushNamed(context, '/fd_dt', arguments: data)
          },
        ),
      ),
      child: Image.network(
        data['image'],
        fit: BoxFit.cover,
      ));
}
