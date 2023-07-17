import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridView3(),
  ));
}
class GridView3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: List.generate(14, (index) => Container(
          decoration: BoxDecoration(color: Colors.lightGreen),
          child: Column(
            children: [
              Image.asset("assets/img_12.png",height: 30,),
              Text("SHE",style: TextStyle(color: Colors.indigo),)
            ],
          ),
        )),),
    );
  }

}