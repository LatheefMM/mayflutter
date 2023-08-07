import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: hotel(),));
}

class hotel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/crownplaza.png'),
                Positioned(child: Text('Crown Plaza',
                  style: TextStyle(fontSize: 30,color: Colors.white,
                      fontWeight: FontWeight.bold),),
                  top: 160,left: 40,
                ),
                Positioned(
                  child: Text('Kochi,Kerala',style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold,color: Colors.white),),
                  top: 190,left: 40,
                ),
                Positioned(top: 225,left: 40,
                  child: Card(color: Colors.grey,
                    child: Text('8.4/85 Reviews',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,
                          color: Colors.white),),
                  ),
                ),
                Positioned(child:
                Icon(Icons.favorite_border_outlined,color: Colors.white,),
                top: 224,left: 340,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star,
                        color: Colors.deepPurple,),
                      Icon(Icons.star,color: Colors.deepPurple,),
                      Icon(Icons.star,color: Colors.deepPurple,),
                      Icon(Icons.star,color: Colors.deepPurple,),
                      Icon(Icons.star,color: Colors.grey,),
                    ],
                  ),
                  Row(
                    children: [
                      Align(child: Icon(Icons.location_on,color: Colors.grey,),
                        alignment: Alignment.topLeft,),
                      Row(
                        children: [
                          Text('8 Km to LuluMall',
                            style: TextStyle(fontSize: 9,color: Colors.grey),),
                        ],
                      )
                    ],
                  )
                ],
              ),
                alignment: Alignment.topLeft,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Positioned(
                child: Align(
                  child: Text('\$200',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        height: -4,color: Colors.deepPurple),),
                  alignment: Alignment.topRight,
                ),
              ),
            ),
            Align(child: Positioned(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('/per Night',
                style: TextStyle(fontSize: 8,height: -7,color: Colors.grey),),
            ),left: 10,)
              ,alignment: Alignment.topRight,),
            Container(width: 340,height: 50,
              child: Card(color: Colors.deepPurple,
                child: Center(child: Text('Book Now',
                  style: TextStyle(color: Colors.white,fontSize: 13),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(child: Text('Ramada Plaza Palm Grove',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                alignment: Alignment.topLeft,),
            ),
            Text('Ramada Plaza Palm Grove hotel on Juhu Beach is ideally located at the'
                ' shores of the Arabian Sea and is a short distance from prime '
                'business districts, malls, and airports. Our clean and '
                'accommodating guest rooms were designed with your comfort '
                'in mind, featuring thoughtful amenities to brighten your stay.'
                'Work out in our fitness centre, with steam room, hot tub, and gym.'
                ' Enjoy our outdoor pool, beauty salon, bookstore, three restaurants,'
                ' and cyber café. Rooms come with coffee and tea maker, high-speed '
                'Internet, mini-bar, DVD players, LCD TVs, mineral water, and cookie'
                ' jars. Suites, accessible rooms, and private meeting and conference '
                'rooms are available.  Enjoy our complimentary continental breakfast '
                'served daily.Step outside our door and onto the beautiful sands of '
                'Juhu Beach where you can soak up the sun. Check out nearby landmarks,'
                ' such as Versova Beach fishing community or Madh Island. See a show '
                'at Prithvi Theatre, learn something new at Nehru Science Center, or'
                ' see the exhibits at the Jehangir Art Gallery. Other famous '
                'attractions in Mumbai include the Gateway of India monument,'
            ' shores of the Arabian Sea and is a short distance from prime '
            'business districts, malls, and airports. Our clean and '
            'accommodating guest rooms were designed with your comfort '
            'in mind, featuring thoughtful amenities to brighten your stay.'
            'Work out in our fitness centre, with steam room, hot tub, and gym.'
            ' Enjoy our outdoor pool, beauty salon, bookstore, three restaurants,'
            ' and cyber café. Rooms come with coffee and tea maker, high-speed '
            'Internet, mini-bar, DVD players, LCD TVs, mineral water, and cookie'
            ' jars. Suites, accessible rooms, and private meeting and conference '
              'rooms are available.  Enjoy our complimentary continental breakfast '
              'served daily.Step outside our door and onto the beautiful sands of '
              'Juhu Beach where you can soak up the sun. Check out nearby landmarks,'
              ' such as Versova Beach fishing community or Madh Island. See a show '
              'at Prithvi Theatre, learn something new at Nehru Science Center, or'
              ' see the exhibits at the Jehangir Art Gallery. Other famous '
              'attractions in Mumbai include the Gateway of India monument'
            ' shores of the Arabian Sea and is a short distance from prime '
            'business districts, malls, and airports. Our clean and '
            'accommodating guest rooms were designed with your comfort '
            'in mind, featuring thoughtful amenities to brighten your stay.'
            'Work out in our fitness centre, with steam room, hot tub, and gym.'
            ' Enjoy our outdoor pool, beauty salon, bookstore, three restaurants,'
            ' and cyber café. Rooms come with coffee and tea maker, high-speed '
            'Internet, mini-bar, DVD players, LCD TVs, mineral water, and cookie'
            ' jars. Suites, accessible rooms, and private meeting and conference '
              'rooms are available.  Enjoy our complimentary continental breakfast '
              'served daily.Step outside our door and onto the beautiful sands of '
              'Juhu Beach where you can soak up the sun. Check out nearby landmarks,'
              ' such as Versova Beach fishing community or Madh Island. See a show '
              'at Prithvi Theatre, learn something new at Nehru Science Center, or'
              ' see the exhibits at the Jehangir Art Gallery. Other famous '
              'attractions in Mumbai include the Gateway of India monument''served daily.Step outside our door and onto the beautiful sands of '
                'Juhu Beach where you can soak up the sun. Check out nearby landmarks,'
                ' such as Versova Beach fishing community or Madh Island. See a show '
                'at Prithvi Theatre, learn something new at Nehru Science Center, or'
                ' see the exhibits at the Jehangir Art Gallery. Other famous '
                'attractions in Mumbai include the Gateway of India monument'
                ',',style: TextStyle(fontSize: 8),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items:[BottomNavigationBarItem(icon: Icon(Icons.search,
            color: Colors.pink,),
              label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined),
            label: 'Fvaourite'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: 'Settings',)]),
      
      

    );
  }
  
}