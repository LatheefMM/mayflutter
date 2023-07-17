import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: listview2(),));
}

class listview2 extends StatelessWidget{
  var names = [
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu',
    'anu','anu','anu','anu','anu','anu','anu','anu'

  ];
  var images = [
    'assets/img_1.png',
    'assets/img_1.png','assets/img_1.png','assets/img_1.png','assets/img_1.png',
    'assets/img_1.png','assets/img_1.png','assets/img_1.png','assets/img_1.png',
    'assets/img_1.png','assets/img_1.png','assets/img_1.png','assets/img_1.png',
    'assets/img_1.png','assets/img_1.png','assets/img_1.png','assets/img_1.png',
    'assets/img_1.png','assets/img_1.png','assets/img_1.png','assets/img_1.png',
  ];
  var tex = [
'HI all',
    'ok',
    'How',
    'Enth patti',
    'how are you',
    'are you ok',
    'enganeyund ipoo?',
    'vere entha ppdy',
    'enthina viliche',
    'kozhapppola',
    'pinnentha vishesham',
    'ah polikk',
    'entha cheyyande ippo',
    'how to overcome this',
    'ennit enth cheyyana plan',
    'enganeya poyath',
    'how much is for that',
    'ippo enganeyund',
    'sugamaano',
    'how to acheive this',
    'entha',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listview 2'),
      ),
      body: ListView(children:List.generate(20, (index) => Card(
        //color: Colors.pink,
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
          title: Text(names[index]),
          subtitle: Text(tex[index]),
          trailing: Text('22:50'),
        ),
      ))
      ),
    );
  }

}