import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: expansionnn(),));
}

class expansionnn extends StatelessWidget{
  var colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.blue
  ];
  var name = ['red','green','yellow','pink','blue'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile'),
      ),
      body: Container(decoration: BoxDecoration(
        color: Colors.green,image: DecorationImage(image: AssetImage('assets/france.png'),fit: BoxFit.fill)
      ),
        child: ExpansionTile(title:Text('colors',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.lightGreenAccent),),
        subtitle: Text('List of colors',style: TextStyle(
          color: Colors.black,fontSize: 20
        ),),
        children: List.generate(5, (index) => ListTile(

          leading: CircleAvatar(
            backgroundColor: colors[index],
          ),
          title: Text(name[index]),
        )),),
      ),
    );
  }
}