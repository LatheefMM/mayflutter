import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: musi(),));
}

class musi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Center(child: Text('Musify',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Align(child: Text('Suggested Playlists',style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,color: Colors.pink),),
                alignment: Alignment.topLeft,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(height:200 ,width: 200,
                        child: Card(child: ClipRRect(child: Image.asset('assets/carmusic.png'),
                            borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(child: ClipRRect(child: Image.asset('assets/music2.png',
                        width: 200,height: 200,),
                        borderRadius: BorderRadius.circular(40),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(child: ClipRRect(child: Image.asset('assets/music3.png',
                        width: 200,height: 200,),
                        borderRadius: BorderRadius.circular(30),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(child: ClipRRect(child: Image.asset('assets/male.png',
                        width: 200,height: 200,),borderRadius: BorderRadius.circular(30),)),
                    )
                  ],
                ),
              )
            ],
          ),
          Text('Recommended For you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ListTile(
            leading: Card(child: ClipRRect(child: Image.asset('assets/taylor.png',width: 50,),borderRadius: BorderRadius.circular(10),)),
            title: Text('Hero',style: TextStyle(color: Colors.pink,
                fontWeight: FontWeight.bold),),
            subtitle: Text('Taylor Swift',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            trailing: SizedBox(width: 80,height: 80,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_border_outlined,color: Colors.pinkAccent,),
                  Icon(Icons.download,color: Colors.pinkAccent,)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Card(child: ClipRRect(child: Image.asset('assets/samsmit.png',width: 50,),borderRadius: BorderRadius.circular(15),)),
            title: Text('Unholy',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink),),
            subtitle: Text('Sam Smith,Kim Petras',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            trailing: SizedBox(width: 80,height: 80,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_border_outlined,color: Colors.pinkAccent),
                  Icon(Icons.download,color: Colors.pinkAccent)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Card(child: ClipRRect(child: Image.asset('assets/rihanna.png',width: 60,),
              borderRadius: BorderRadius.circular(15),)),
            title: Text('Lift Me Up',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink),),
            subtitle: Text('Rihanna',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            trailing: SizedBox(width: 80,height: 80,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_border_outlined,color: Colors.pinkAccent),
                  Icon(Icons.download,color: Colors.pinkAccent)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Card(child: ClipRRect(child: Image.asset('assets/dax.png',width: 60,),
              borderRadius: BorderRadius.circular(15),)),
            title: Text("'Depression'",style: TextStyle(
                fontWeight: FontWeight.bold,color: Colors.pink),),
            subtitle: Text('Dax',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            trailing: SizedBox(width: 80,height: 80,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_border_outlined,color: Colors.pinkAccent),
                  Icon(Icons.download,color: Colors.pinkAccent)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Card(child: ClipRRect(child: Image.asset('assets/davidguetta.png',width: 65,),
              borderRadius: BorderRadius.circular(15),)),
            title: Text('Iam good',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink),),
            subtitle: Text('David Guetta & Babe Rexah',style:
            TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            trailing: SizedBox(width: 80,height: 80,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_border_outlined,color: Colors.pinkAccent),
                  Icon(Icons.download,color: Colors.pinkAccent)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Card(child: ClipRRect(child: Image.asset('assets/shreyaghoshal.png',width: 70,),
              borderRadius: BorderRadius.circular(15),)),
            title: Text('Sun Raha Hai',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink)),
            subtitle: Text('Shreya Ghoshal',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
            trailing: SizedBox(width: 80,height: 80,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.star_border_outlined,color: Colors.pinkAccent),
                  Icon(Icons.download,color: Colors.pinkAccent)
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor:Colors.black,
          items:[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.pinkAccent,),label: 'Home',backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.library_add),label: 'Library'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: 'More'),
      ]),
    );

}
  
}