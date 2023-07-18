import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mayflutter/refracting.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home:staggr(),));
}
class staggr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Staggered grid view',)),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
            crossAxisCount: 4,children: [
              StaggeredGridTile.count(
                  crossAxisCellCount: 3, mainAxisCellCount: 4, child: Card(
                child: Image.asset('assets/img_4.png'),color: Colors.green,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3, mainAxisCellCount: 3, child: Card(
            child: Image.asset('assets/img_5.png'),color: Colors.pink,
          )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3, mainAxisCellCount: 4, child: Card(
            child: Image.asset('assets/img_19.png'),color: Colors.orange,
          ))
        ],),
      ),
    );
  }

}