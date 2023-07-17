import 'package:flutter/material.dart';
import 'package:mayflutter/assignment/assignment2/assregistration.dart';
import 'package:mayflutter/assignment/assignment2/asssplash.dart';
import 'package:mayflutter/regstration.dart';
import 'package:mayflutter/splash.dart';

class loginass extends StatelessWidget
{
  String username ="admin@123";
  String Password ="abc123";

  final uname= TextEditingController();
  final pass= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title:  Center(child: Text("Login ",)),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Welcome back login with your credentials...'),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)),

                  hintText:"username",
                  helperText: "Uername must be an email",
                  labelText: "Username",
                  prefixIcon: Icon(Icons.person)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: TextField(
              controller: pass,
              obscureText: true, // .... marunathu dot
              obscuringCharacter: "*", //.... dot mari star akan
              decoration:InputDecoration(border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)),

                  hintText: "password",
                  helperText: "password must be contain 6 characters",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.visibility_off_sharp),
                  suffix: Icon(Icons.visibility)
              ),

            ),
          ),

          ElevatedButton(
              onPressed: () {
                if (uname.text != "" && pass.text !="") {
                  if (uname.text == username && pass.text == Password) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>logsplas()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar
                      (SnackBar(content: Text("email or pasword is incorrect")));

                  }
                }else{
                  ScaffoldMessenger.of(context).showSnackBar
                    (SnackBar(content: Text("Fields must no be empty")));
                }
              },
              child: const Text ("Login")),
          TextButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reg()));
              },
              child: const Text("Not a User!!!!! Register here"))



        ],
      ),
    );
  }
}