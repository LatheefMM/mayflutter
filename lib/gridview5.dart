import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: grid55(),));
}

class grid55 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.extent(maxCrossAxisExtent: 60,
     children:List.generate(10, (index) => Card(
       child: Icon(Icons.account_balance,
       size: 60,),
     )
     )
     ),
   );
  }

}