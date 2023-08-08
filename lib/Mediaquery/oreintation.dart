import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: run(),));
}


class run extends StatelessWidget{
  var orientation,height,width;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.orientationOf(context);
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('orientation media query'),backgroundColor: Colors.green,
      ),
      body: orientation == Orientation.portrait
      ? Container(
        color: Colors.blue,
        height: height/2,
        width: width/4,
      )
          :Container(
        height: height/3,
        width: width/2,
      )
    );
  }

}