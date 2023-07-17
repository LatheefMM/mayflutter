import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: whatsapp(),));
}

class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    // appBar: AppBar(
    //   title: Text('Whatsapp Chat'),
    //  backgroundColor: Colors.green,
    //   actions: [
    //     SizedBox(child: Icon(Icons.camera_alt_rounded),width: 20,),
    //     SizedBox(child: Icon(Icons.search),width: 60,),
    //     PopupMenuButton(itemBuilder: (context){
    //       return [
    //       PopupMenuItem(child: Text('Settings')),
    //       PopupMenuItem(child: Text('Newgroup'),),
    // PopupMenuItem(child: Text('payments')),
    // PopupMenuItem(child: Text('Newbroadcast'),),
    // PopupMenuItem(child: Text('About'),),
    //       ];
    // }
    // ),
    // ]
    // ),
    body: ListView(
      children: [
        Card(
          shadowColor: Colors.pink,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_8.png')),
            title: Text('Todays News'),
            subtitle: Text('There is a chance to flood  again in kerala'),
            trailing: Text('5:49')
          ),
        ),
        Card(
          shadowColor: Colors.blue,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_9.png')),
            title: Text('Flutter May batch'),
            subtitle: Text('Latheef:Hi'),
            trailing: Text('3:59 PM'),
          ),
        ),
        Card(
          shadowColor: Colors.orange,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_10.png')),
            title: Text('Doctor Flutter'),
            subtitle: Text('you: Nee angd kodth'),
            trailing: Text('yesterday'),
          ),
        ),
        Card(
          shadowColor: Colors.yellow,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_11.png')),
            title: Text('Aswagosh'),
            subtitle: Row(
              children: [
                Icon(Icons.done),
                Text('https://github.com/luminar'),
              ],
            ),
            trailing: Text('01/07/2023'),
          ),
        ),
        Card(shadowColor: Colors.deepPurpleAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_12.png')),
            title: Text('Stinil'),
            subtitle:Row(
              children: [Icon(Icons.done_all_sharp),
                Text('import dart.html import '),
              ],
            ),
            trailing: Text('04/07/23'),
          ),
        ),
        Card(shadowColor: Colors.tealAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_13.png')),
            title: Text('Sreedevi Miss'),
            subtitle: Row(
              children: [
                Icon(Icons.done),
                Text('Hi miss'),
              ],
            ),
            trailing: Text('30/06/23'),
          ),
        ),
        Card(
          shadowColor: Colors.cyan,
          child: ListTile(
            leading:Image.asset('assets/img_16.png'),
            title: Row(
              children: [
                Text('MyJio Offers'),
                Icon(Icons.cloud_done_outlined),
              ],
            ),
            subtitle: Row(
              children: [
                Icon(Icons.image),
                Text('Recharge with 239 rupees '),
              ],
            ),
            trailing: Text('01/01/23'),
          ),
        ),
        Card(shadowColor: Colors.yellowAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_14.png')),
            title: Text('Marvan'),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),Text('ok')
              ],
            ),
            trailing: Text('yesterday'),
          ),
        ),
        Card(
          shadowColor: Colors.deepPurple,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_15.png')),
            title: Text('Vishnu'),
            subtitle: Row(
              children: [
                Icon(Icons.done_all_outlined),
                Text('ok da'),
              ],
            ),
            trailing: Text('7:07 PM'),

          ),
        ),
        Card(
          shadowColor: Colors.cyan,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/img_17.png")),
            title: Text('Aswanth'),
            subtitle: Text('Are you ok?'),
            trailing: Text('01/01/20'),
          ),
        )

      ],
    ),
  );
  }
}