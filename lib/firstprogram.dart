import 'package:flutter/material.dart';

void main() {
  //to run a program
  runApp(//to attach the widget tree to the UI
      MaterialApp(
        //default theme of our app
        debugShowCheckedModeBanner: false,
        home:
        Firstpage(), //initial screen of our app(home must be a widget,it may be ststefull/steteless
      ));
}

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //to create a widget tree
    return Scaffold(
      // backgroundColor: Colors.red,  //to set a single color to the entire scaffold
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