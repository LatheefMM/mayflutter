import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: advertise(),));
}

class advertise extends StatelessWidget{
  var names = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(itemBuilder:(context,index){
        return Card(
          //color: Colors.red,
          shadowColor: Colors.red,
          child: Text(names[index]),
        );
      },

          separatorBuilder: (context,index) {
        if(index % 4 == 0 ){
          return Card(
            child: Text("Advertisement"),
             color: Colors.red,
          );
    }
        return Text('');
    },itemCount: names.length,));
  }

}