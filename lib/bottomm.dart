import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: bott(),));
}

class bott extends StatelessWidget{
  get context => null;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: GestureDetector(
         onLongPress: (){
           showsheet(context);
         },
         child: Image.asset('assets/img_7.png'),
       ),
     ),
   );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.apple,color: Colors.pink,),
              title: Text('share'),
            ),
      ListTile(
      leading: FaIcon(FontAwesomeIcons.earDeaf,color: Colors.green),
      title: Text('copy'),
      )],
        )
      );
    });
  }

}