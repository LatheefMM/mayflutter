import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: calls(),));
}

class calls extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // appBar: AppBar(
     //   title: Text('Calls'),
     // ),
     body: ListView(
       children: [
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_29.png'),backgroundColor: Colors.green,),
           title: Text('Create call link'),
           subtitle: Text('Share a link for your Whatsapp call'),
         ),
         ListTile(
           leading: Text('Recent')
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_21.png')),
           title: Text('Latheef'),
           subtitle:Row(
             children: [
               Icon(Icons.arrow_left),
               Text('July, 6:55 pm')
             ],
           ),
           trailing: Icon(Icons.phone,color: Colors.green),
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_28.png')),
           title: Text('Samaniya'),
           subtitle: Row(
             children: [
               Icon(Icons.arrow_left),
               Text('3 July,8:49 pm')
             ],
           ),
           trailing: Icon(Icons.phone,color: Colors.green,),
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_12.png')),
           title: Text('Hauna'),
           subtitle: Row(
             children: [
             Icon(Icons.arrow_left),
               Text('1 July,5:52 pm')
           ],),
           trailing: Icon(Icons.phone,color: Colors.green,),
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_14.png')),
           title: Text('Marvan'),
           subtitle: Row(
             children: [
               Icon(Icons.arrow_left),
               Text('29 June,5:00 pm')
             ],
           ),
           trailing: Icon(Icons.videocam,color: Colors.green,),
         ),
         ListTile(
           leading:CircleAvatar(backgroundImage: AssetImage('assets/img_15.png')) ,
           title: Text('Vishnu'),
           subtitle: Row(
             children: [
               Icon(Icons.arrow_left),
               Text('28 june,7:34 pm')
             ],
           ),
           trailing: Icon(Icons.phone,color: Colors.green,),
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_19.png')),
           title: Text('Stella'),
           subtitle: Row(
             children: [
               Icon(Icons.arrow_left),
               Text('2 May,5:45 am')
             ],
           ),
           trailing: Icon(Icons.videocam,color: Colors.green,),
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_25.png')),
           title: Text('Ameena'),
           subtitle: Row(
             children: [
               Icon(Icons.arrow_left),
               Text('1 May,4:44 pm')
             ],
           ),
           trailing: Icon(Icons.videocam,color: Colors.green,),
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage('assets/img_30.png')),
           title: Text('Saahiba'),
           subtitle: Row(
             children: [
               Icon(Icons.arrow_left),
               Text('23 April,5:43')
             ],
           ),
           trailing: Icon(Icons.videocam,color: Colors.green,),
         )

       ],
     ),
   );
  }

}