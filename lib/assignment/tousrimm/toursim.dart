import 'package:flutter/material.dart';
import 'package:mayflutter/assignment/tousrimm/italyy.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: tour(),));
}

class tour extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Card(child: ClipRRect(child: Image.asset('assets/germany.png'),
                  borderRadius: BorderRadius.circular(35),)),
                Positioned(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Germany',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                        color: Colors.white),),
                ),
                  top: 150,),
              ],
            ),
    Column(
    children: [
    Stack(
    children: [
    Card(child: ClipRRect(child: Image.asset('assets/france.png'),
    borderRadius: BorderRadius.circular(35),)),
    Positioned(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('France',
    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
    color: Colors.white),),
    ),
    top: 150,),
    ],
    ),
    Column(
    children: [
    Stack(
    children: [
    Card(child: ClipRRect(child: Image.asset('assets/italy.png'),
    borderRadius: BorderRadius.circular(35),)),
    Positioned(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed:() {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>ital()));
      },
      child: Text('Italy',
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
      color: Colors.white),),
    ),
    ),
    top: 180,),
    ],
    ),
    Column(
    children: [
    Stack(
    children: [
    Card(child: ClipRRect(child: Image.asset('assets/india.png'),
    borderRadius: BorderRadius.circular(35),)),
    Positioned(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('India',
    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
    color: Colors.white),),
    ),
    top: 180,),
    ],
    ),

    ],
        ),
          ]
        )
    ]),
      ])));
  }


}