import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: community(),));
}

class community extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: ListView(
         children: [
           ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage('assets/img_8.png')),
             title: Text('Breaking News'),
             subtitle: Text('breaking news:tommorrow will be holiday for schools'),
             trailing: Text('7:56 pm'),
           ),
           ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage('assets/img_9.png')),
             title: SizedBox(child: Text('Luminar Texhnolab - 2'),width: 20,),
             subtitle: Text('~Luminar technolab : https://www.instagram'),
             trailing: Text('10:35 am'),
           )
         ],
       ),
     ),
   );
  }
  
}