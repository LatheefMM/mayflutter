import 'package:flutter/material.dart';

class refra extends StatelessWidget{
  final Color? bgcolor;
  final Image? image;
  VoidCallback? onpress;
  Widget? label;

  refra({this.bgcolor,required this.label,required this.onpress,this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        leading: image,
        trailing: label,
        onTap: onpress,
      ),

    );

  }

}