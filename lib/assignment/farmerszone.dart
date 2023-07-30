import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: farm(),
  ));
}

class farm extends StatelessWidget {
  var ss = [
    'VEGETABLES',
    'FRUITS',
    'EXOTIC',
    'FRESH CUTS',
    'CUTTING',
    'SHAKED ITEMS'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverAppBar(
                actions: [
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text('Kochi'),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
                // floating: true,
                pinned: true,
                backgroundColor: Colors.green,

                title: Text(
                  'FARMERS FRESH ZONE',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                bottom: AppBar(
                  backgroundColor: Colors.green,
                  elevation: 0,
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    //color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.greenAccent,
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            30))),
                                onPressed: () {},
                                child: Text(ss[index])),
                          );
                        }),
                      ),
                    ),
                    Image.asset(
                      'assets/img_34.png',
                      fit: BoxFit.fill,
                    ),
                    Card(
                      borderOnForeground: true,
                      shadowColor: Colors.blue,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: Colors.green,
                                ),
                                Text('30 MINS POLICY'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.green,
                                ),
                                Text('TRACEABILITY'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.green,
                                ),
                                Text(
                                  'LOCAL SOURCING',
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Shop By Category',
                      style: TextStyle(fontSize: 22),
                    ),
                    Container(
                      child: Row(
                        children: [Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Column(
                                  children: [
                                    //Container(decoration:BoxDecoration(image:DecorationImage(image: AssetImage('assets/italy.png')))),
                                    //Text('Vegetables')
                                    Image.asset('assets/tomatoe 2.png',width:90 ,height:70 ,),
                                    Text('Vegetables',style: TextStyle(fontSize: 10),)
                                  ],
                              ),
                            ),
                          ),
                        ),
                          Card(
                            child: Column(
                              children: [
                                Image.asset('assets/pineapple2.png',width: 130,height: 70,),
                                Text('Fruits',style: TextStyle(fontSize: 10),)
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              children: [
                                Image.asset('assets/vegetables34.png',width: 110,height: 70,),
                                Text('Exotic',style: TextStyle(fontSize: 10),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [Card(
                          child: Column(
                            children: [
                              //Container(decoration:BoxDecoration(image:DecorationImage(image: AssetImage('assets/italy.png')))),
                              //Text('Vegetables')
                              Image.asset('assets/freshcuts.png',width:120 ,height:60 ,),
                              Text('Fresh cuts',style: TextStyle(fontSize: 10),)
                            ],
                          ),
                        ),
                          Card(
                            child: Column(
                              children: [
                                Image.asset('assets/vegetables.png',width: 130,height: 60,),
                                Text('Nutrition Chargers',style: TextStyle(fontSize: 10),)
                              ],
                            ),
                          ),

                          Card(
                            child: Column(
                              children: [
                                //Container(decoration:BoxDecoration(image:DecorationImage(image: AssetImage('assets/italy.png')))),
                                //Text('Vegetables')
                                Image.asset('assets/Packedflavours.png',width:110,height:60 ,),
                                Text('Packed Flavours',style: TextStyle(fontSize: 10),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  )
              )
            ]),
            bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,),label: 'home',backgroundColor: Colors.green),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account')
        ]),
    );
  }
}
