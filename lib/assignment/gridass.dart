import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: gridass(),));
}

class gridass extends StatelessWidget{
  var iconss = [
    Icon(Icons.home),
    Icon(Icons.camera_alt),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),children:List.generate(2, (index) => Card(
        color: Colors.blue,
              child: ListTile(
        leading: iconss[index],
        title: Text('Heart shaker'),
      ),

            ),
    )
      ),

    );

  }

}