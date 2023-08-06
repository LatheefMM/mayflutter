import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: play(),));
}

class play extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
       title: Center(child: Text('Playlists',
         style: TextStyle(fontSize: 28,color: Colors.pinkAccent),)),
        bottom:AppBar(backgroundColor: Colors.black,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
              child: TextField(cursorColor: Colors.white,
                decoration: InputDecoration(fillColor: Colors.grey,hintStyle:
                    TextStyle(color: Colors.pinkAccent),
                  hintText: 'Search...',
                  suffixIcon: Icon(Icons.search,color: Colors.pinkAccent,)
                ),
              ),
            ),
          ),
        ),
      ),
     body: SingleChildScrollView(scrollDirection: Axis.vertical,
       child: Row(
         children: [
           SizedBox(width: 180,
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/top50.png',
                     width: 170,height: 170,),borderRadius: BorderRadius.circular(28),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/lofiremix.png',
                     width: 170,height: 170,),borderRadius: BorderRadius.circular(25),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/carmusic.png',
                     width: 170,height: 170,),
                     borderRadius: BorderRadius.circular(25),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/speedupsong.png',
                     width: 170,height: 170,),borderRadius: BorderRadius.circular(25),),
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/popmusic.png',
                     width: 170,height: 170,),borderRadius: BorderRadius.circular(25),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/mike.png',
                     width: 170,height: 170,),borderRadius: BorderRadius.circular(25),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/tiktok.png',
                     width: 170,height: 170,),borderRadius: BorderRadius.circular(25),),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(child: Image.asset('assets/playlist1.png',
                     width: 170,height: 170,),borderRadius: BorderRadius.circular(25),),
                 ),
               ],
             ),
           )
         ],
       ),
     ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor:Colors.black,items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.pinkAccent,),
          label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.pinkAccent,),
            label: 'Search',),
        BottomNavigationBarItem(icon: Icon(Icons.playlist_add_outlined,color: Colors.pinkAccent,),
            label: 'Playlists'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz,color: Colors.pinkAccent,),
        label: 'More')


      ]),
    );

  }

}