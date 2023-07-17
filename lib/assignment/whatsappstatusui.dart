import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: status(),));
}

class status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Status'),
      // ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_21.png')),
            title: Text('My Status'),
            subtitle: Text('Tap to add status update'),
          ),
          ListTile(
            leading: SizedBox(child: Text('Recent updates')),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_22.png')),
            title: Text('Anjaly'),
            subtitle: Text('2 minutes ago'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_23.png')),
            title: Text('Anuradha'),
            subtitle: Text('Today, 11:52 am'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_24.png')),
            title: Text('Ameena'),
            subtitle: Text('yesterday, 7:56 pm'),
          ),
          ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage('assets/img_25.png')),
            title: Text('Ashmin'),
            subtitle: Text('yesterday 6:45 pm'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_26.png')),
            title: Text('Anna'),
            subtitle: Text('yesterday 5:30 pm'),
          ),
          ListTile(
            leading: Text('Viewed updates'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_27.png')),
            title: Text('Aadhila'),
            subtitle: Text('Today 7:30 am'),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/img_28.png')),
            title: Text('Fathima jahan'),
            subtitle: Text('Today 5:40 am'),
          )
        ],
      ),
    );
  }

}