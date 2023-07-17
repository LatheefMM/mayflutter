import 'package:flutter/material.dart';
import 'package:mayflutter/assignment/assignment2/asslogin.dart';
import 'package:mayflutter/assignment/communitywhatsapp.dart';
import 'package:mayflutter/assignment/contact_book_ui.dart';
import 'package:mayflutter/assignment/whatsappstatusui.dart';
import 'package:mayflutter/splash.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: botom1(),));
}

class botom1 extends StatefulWidget{
  @override
  State<botom1> createState() => _botom1State();
}

class _botom1State extends State<botom1> {
  int index = 0;

  var screens = [
    contact(),
    status(),
    community(),
    loginass(),
    Firstpage()
  ];

  @override
  Widget build(BuildContext context) {DefaultTabController(length: 4, child: Scaffold());
    return Scaffold(
      //appBar: AppBar(
       // title: Text('Bottomnavigation bar'),
     // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){
          setState(() {
            index = tapindex;
          });
        },
          backgroundColor:Colors.green,
          selectedItemColor:Colors.yellow,
          type: BottomNavigationBarType.fixed,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.contacts_sharp),label: 'contact'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: 'view'),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings')
          ]),
      body: screens[index],
    );
  }
}
