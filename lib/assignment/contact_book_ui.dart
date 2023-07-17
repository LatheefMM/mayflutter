import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: contact(),));
}

class contact extends StatefulWidget{
  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // appBar: AppBar(
     //   title: Text('SimpleContactList'),
     // ),
     body: ListView(
       children: const [
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.blue,
             title: Text('jhon judah'),
             subtitle: Text('2233445566'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.red,
             title: Text('Bisola Akambi'),
             subtitle: Text('9988776655'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
    ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.orange,
             title: Text('Egosa ikku'),
             subtitle: Text('6677889900'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.green,
             title: Text('Andrew ndelski'),
             subtitle: Text('9988776655'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.pink,
             title: Text('arinze dayo'),
             subtitle: Text('1122334455'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.pink,
             title: Text('wakkar zimbu'),
             subtitle: Text('998877443322'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.pink,
             title: Text('Emaechi chinnadu'),
             subtitle: Text('8877665522'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.pink,
             title: Text('osaretin igbnou'),
             subtitle: Text('12345678901'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.pink,
             title: Text('asmin shereef'),
             subtitle: Text('9856331122'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.pink,
             title: Text('Rahman'),
             subtitle: Text('7766554422'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),
         Card(
           child: ListTile(
             leading: CircleAvatar(child: Icon(Icons.person)),
             iconColor: Colors.pink,
             title: Text('saif ali khan'),
             subtitle: Text('55667788990'),
             trailing: Icon(Icons.arrow_circle_right,color: Colors.grey,),
           ),
         ),

       ],
     ),
   );
  }
}