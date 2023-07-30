import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: darw(),));
}

class darw extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('My drawer'),),
    drawer: Drawer(child: ListView(
      children: [
        UserAccountsDrawerHeader(decoration: BoxDecoration(
          color: Colors.green,
        ),
          accountName:Text('Latheef',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,
            accountEmail: Text('latheefmm34@gmail.com'),
            currentAccountPicture:
            CircleAvatar(backgroundImage: AssetImage('assets/img_14.png')),),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('home'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.menu),
          title: Text('Menu'),
        )

      ],

    ),

    ),
  );
  }

}