import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mayflutter/loginpage.dart';
void main() {

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Firstpage(),
      ));
}

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();//create and initial state for the screen
}

class _FirstpageState extends State<Firstpage> {//initial state of the splash page
  //there are two functionalities in state class
  //initstate() and seet state(){}
  //init state(){} - what will happen hen the the app or screen is loaded initially
  //setstate(){} - what change will occur on a widget or screen
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () { 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //     fit: BoxFit.fill,
          //     image: NetworkImage("https://unsplash.com/photos/Zega-znwiLQ"))
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.yellow,
              Colors.green,
              Colors.deepOrange
            ],begin: Alignment.bottomLeft,end: Alignment.topRight)),
        // color: Colors.yellowAccent,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.abc_sharp, size: 100, color: Colors.indigo,),
                Image.asset(
                  "assets/img.png",
                  height: 100,
                  width: 100,
                ),
                const Text(
                  "Le-Money",
                  style: TextStyle(fontSize: 25),
                )
              ],
            )),
      ),
    );
  }
}