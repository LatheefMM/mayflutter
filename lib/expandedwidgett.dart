import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: expandedwidgettt(),));
}

class expandedwidgettt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expanded'),),
      body: Container(
        color: Colors.orange,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello'),
            Icon(Icons.ac_unit),
            Image.asset('assets/france.png'),
            Image.asset('assets/germany.png'),
            Expanded(child: Image.asset('assets/italy.png')),
            Expanded(child: Image.asset('assets/india.png'))
          ],
        ),
      ),
    );
  }

}