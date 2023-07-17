import 'package:flutter/material.dart';
import 'package:mayflutter/assignment/communitywhatsapp.dart';
import 'package:mayflutter/assignment/whatsappcallsui.dart';
import 'package:mayflutter/assignment/whatsappchatui.dart';
import 'package:mayflutter/assignment/whatsappstatusui.dart';
import 'package:mayflutter/loginpage.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: tabbar(),));
}

class tabbar extends StatefulWidget{
  @override
  State<tabbar> createState() => _tabbarState();

}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {return DefaultTabController(length: 4, child: Scaffold(
    appBar: AppBar(backgroundColor: Colors.green,
      title: Text('whatsapp'),actions: [
        SizedBox(child: Icon(Icons.search),width: 30,),
        SizedBox(child: Icon(Icons.camera_alt_rounded),width: 50,),
        PopupMenuButton(itemBuilder: (context){
          return [
            PopupMenuItem(child: Text('Settings')),
            PopupMenuItem(child: Text('Newgroup'),),
            PopupMenuItem(child: Text('payments')),
            PopupMenuItem(child: Text('Newbroadcast'),),
            PopupMenuItem(child: Text('About'),),

          ];})
      ],
      bottom: TabBar(tabs: [
        Icon(Icons.people),
        Text('chats'),
        Text('Status'),
        Text('calls')
      ]),
    ),
    body: TabBarView(children: [
      community(),
      whatsapp(),
      status(),
      calls(),
    ]),
  bottomNavigationBar: NavigationBar(

  onDestinationSelected: (int index) {
  setState(() {

  });
  },
  destinations: const <NavigationDestination>[
  NavigationDestination(
  selectedIcon: Icon(Icons.person),
  icon: Icon(Icons.person_outline),
  label: 'Learn',
  ),
  NavigationDestination(
  selectedIcon: Icon(Icons.engineering),
  icon: Icon(Icons.engineering_outlined),
  label: 'Relearn',
  ),
  NavigationDestination(
  selectedIcon: Icon(Icons.bookmark),
  icon: Icon(Icons.bookmark_border),
  label: 'Unlearn',
  ),
  ],
  ),
  ));
  }
}