import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: gridv(),));
}

class gridv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
      crossAxisSpacing: 30,
      mainAxisSpacing: 40),
      children:
        List.generate(10, (index) => Card(child: Center(
          child: Image.asset('assets/img_28.png'),
        ),))
      ),
    );
  }

}