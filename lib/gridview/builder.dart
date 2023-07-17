import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: gridv3(),));
}

class gridv3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.builder(itemCount:10,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
    ), itemBuilder: (
        context, index)
    {
      return Card(
        child: Center(
          child: Text('user $index',style: TextStyle(fontSize: 20,color: Colors.purple),),
        ),
      );
    }),
  );
  }

}