import 'package:flutter/material.dart';
import 'package:mayflutter/assignment/assignment2/asslogin.dart';
import 'package:mayflutter/assignment/assignment2/assregistration.dart';
import 'package:mayflutter/loginpage.dart';
import 'package:mayflutter/regstration.dart';
void main(){
  runApp(MaterialApp(home: logsplas(),));
}

class logsplas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text('Hello There!')),
      ),
    ),
    body:Column(
      children: [
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Center(
            child: Text('Automatic identity verification which enable you to verify your identity'),
          ),
        ),
        Image.asset('assets/img_3.png'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: ()   {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> loginass()));
          }, child: Text('Login')),
        ),
        ElevatedButton(onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Reg()));
        }, child: Text('Sign in'))

      ],
    ),
  );
  }

}