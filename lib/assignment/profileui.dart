import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: profilee(),));
}

class profilee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.arrow_circle_left_rounded),
                trailing: Icon(Icons.format_align_right),
              ),
            ),
            Column(
              children: [
                Container(child: CircleAvatar(backgroundImage: AssetImage('assets/male.png'),maxRadius: 50,))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.facebook,color: Colors.blue,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.twitter,color: Colors.blue,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.linkedin,color: Colors.blue,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(FontAwesomeIcons.github,color: Colors.black,),
                )


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Jerin',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                  Text('@weberror'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Mobile App Devoloper',style: TextStyle(fontSize: 20),),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.warning),
                    title: Text('Privacy',style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time_outlined),
                    title: Text('Purchase History',style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.question_mark),
                    title: Text('Help & Support',style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings',style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_add_alt),
                    title: Text('Invite a friend',style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Log out',style: TextStyle(fontWeight: FontWeight.bold)),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }

}