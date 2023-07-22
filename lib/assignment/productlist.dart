import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: prod(),));
}

class prod extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Product List')),
      ),
      body: ListView(
        children: [
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/img_4.png')),
              title: Text('Name:Apple',style:TextStyle(fontSize: 20),),
              subtitle: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Unit:KG'),
                  ),
                  Text('Price:20 Rs/-')
                ],
              ),
              trailing: Icon(Icons.shopping_cart_checkout),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/img_31.png')),
              title: Text('Name:Mango',style: TextStyle(fontSize: 20)),
              subtitle: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Unit:Doz'),
                  ),
                  Text(' Price:10 Rs/-')
                ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/banana.png')),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(child: Text('Name:Banana',style: TextStyle(fontSize: 20))),
              ),
              subtitle: Row(children: [
                Text('Unit:Doz'),Text('Price:30 Rs/-')
              ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/grapes.png')),
              title: Text('Name:Grapes',style: TextStyle(fontSize: 20)),
              subtitle: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Text('Unit:Kg')),
                ),Text('Price:30 Rs/-')
              ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/img_32.png')),
              title: Text('Name:Water melon',style: TextStyle(fontSize: 20)),
              subtitle: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Text('Unit:Kg')),
                ),Text('Price:25 Rs/-')
              ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/kiwi.png')),
              title: Text('Name:Kiwi',style: TextStyle(fontSize: 20)),
              subtitle: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Text('Unit:Kg')),
                ),Text('Price:25 Rs/-')
              ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/img_7.png')),
              title: Text('Name:orange',style: TextStyle(fontSize: 20)),
              subtitle: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Text('Unit:Kg')),
                ),Text('Price:15 Rs/-')
              ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/pineapple.png')),
              title: Text('Name:Pineapple',style: TextStyle(fontSize: 20)),
              subtitle: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Text('Unit:Kg')),
                ),Text('Price:35 Rs/-')
              ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
          Card(color: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('assets/avacado.png')),
              title: Text('Name:avocado',style: TextStyle(fontSize: 20)),
              subtitle: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(child: Text('Unit:Kg')),
                ),Text('Price:35 Rs/-')
              ],
              ),
              trailing: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
        ],
      ),
    );
  }

}