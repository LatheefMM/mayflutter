import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: sliverex1(),));
}

class sliverex1  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('Sliver app bar'),
            bottom: AppBar(elevation:0,title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'search here',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt)
                ),
              ),
            ),),
          ),
          SliverList(delegate:
          SliverChildBuilderDelegate(childCount: 30,
                  (context, index) => Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('user $index',style: TextStyle(fontSize: 30),),
            ),
          )))
        ],
      ),
    );
  }

}