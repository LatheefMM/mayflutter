import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: gridv1(),));
}

class gridv1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 70
      ),
          children:
          List.generate(10, (index) => Card(child: Center(
            child: Image.asset('assets/img_23.png'),
          ),))
      ),
    );
  }

}