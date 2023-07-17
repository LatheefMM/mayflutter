import 'package:flutter/material.dart';
import 'package:mayflutter/loginpage.dart';


class Reg extends StatefulWidget{
  @override
  State<Reg> createState() => _Reg();
}

class _Reg extends State<Reg> {
  //to validate the entire form
  final formkey = GlobalKey<FormState>();
  var confirmpass; // to store value from password field
  bool showpwd = true;
  bool showpwd2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WELCOME !'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 50,fontStyle:FontStyle.italic ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "E-mail"),
                validator: (email) {
                  // email - data from text form field
                  if (email!.isEmpty || !email.contains('@')) {
                    return "Enter a valid email/ field must not be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: showpwd,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd) {
                              showpwd = false;
                            } else {
                              showpwd = true;
                            }
                          });
                        },
                        icon: Icon(showpwd == true
                            ? Icons.visibility
                            : Icons.visibility_off_sharp)),

                    border: OutlineInputBorder(),
                    hintText: "Password"),
                textInputAction: TextInputAction.continueAction,
                validator: (password) {
                  //password - data from text form field
                  // password cannot accessed outside this validator function so the value from
                  // password field assigned to  the instant variable confirmpass
                  confirmpass = password;
                  if (password!.isEmpty || password.length < 6) {
                    return "Password length should be greater than 6 / must not be empty ";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                obscureText: showpwd2,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpwd2) {
                              showpwd2 = false;
                            } else {
                              showpwd2 = true;
                            }
                          });
                        },
                        icon: Icon(showpwd2 == true
                            ? Icons.visibility
                            : Icons.visibility_off_sharp)),
                    border: OutlineInputBorder(), hintText: "ConfirmPassword"),
                validator: (cpassword) {
                  if (cpassword != confirmpass || cpassword!.isEmpty) {
                    return "Password Mismatch/ empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var isValid = formkey.currentState!.validate();
                  if (isValid == true) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  } else {}
                },
                child: const Text("Sign Up")),
            TextButton(onPressed: () {}, child: Text('Do you have an account? Login'))
          ],
        ),
      ),
    );
  }
}