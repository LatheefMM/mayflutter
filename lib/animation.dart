import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: lot()));
}

class lot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animation/animation_lk9cnoh4.json')
      )
    );
  }

}