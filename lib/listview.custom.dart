import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: listviewcus(),));
}

class listviewcus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
    body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index) => Text('Hello'))),
    // body: ListView.custom(childrenDelegate: SliverChildListDelegate(
        // List.generate(10, (index) => Text('Hello')))),
   );
  }

}
