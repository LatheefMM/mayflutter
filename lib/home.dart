import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: homepage(),));
}

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Home'),
        ),
        body: ListView(
            children: [
              Center(child: Text('Fruits', style: TextStyle(fontSize: 30)),
              ),
              Card(
                child: ListTile(leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img_5.png')),
                  title: Text('Apple'),
                  subtitle: Text('\$200'),
                  trailing: Icon(Icons.shopping_cart),),
              ),
              Card(
                child: ListTile(leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img_4.png')),
                  title: Text('Mixed fruits'),
                  subtitle: Text('\$500'),
                  trailing: Icon(Icons.shopping_cart),),
              ),
              Card(
                child: ListTile(leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/img_6.png')),
                  title: Text('Mixed fruits 2'),
                  subtitle: Text('\$600'),
                  trailing: Icon(Icons.shopping_cart),),
              ),
              Card(
                  child: ListTile(leading: Image.asset('assets/img_7.png'),
                      title: Text('citrus'),
                      subtitle: Text('\$100'),
                      trailing: Icon(Icons.shopping_cart,)
                  )
              )
            ]
        )
    );
  }
}