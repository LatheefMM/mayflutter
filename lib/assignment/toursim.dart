import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: tour(),));
}

class tour extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.deepPurple,
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Popular',style: TextStyle(fontSize:27,fontWeight: FontWeight.bold),),
            SizedBox(height:240,child: Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(60)
            ),child: Card(child: Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),child: Image.asset('assets/germany.png'))))),
            SizedBox(height:230,child: Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(60)
            ),child: Card(child: Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),child: Image.asset('assets/france.png'))))),
            Card(color:Colors.deepOrange,child: SizedBox(height:250,child: Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(40)
            ),child: Image.asset('assets/italy.png')))),
            Card(color:Colors.black,child: SizedBox(height:240,child: Container(decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(80)
            ),child: SizedBox(height:150,child: Image.asset('assets/india.png')))))
          ],
        ),
      ),
    );
  }

}