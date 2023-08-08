import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                    CarouselSlider(items: [
                      Container(width: 500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1402281575/photo/bowls-of-oatmeal-with-mixed-fruits-topping.jpg?s=1024x1024&w=is&k=20&c=vl6tLxSbH7pVEZUMmBgdvegChKRZXnZIl1GJTduQ9aA=")),
                          )),
                      Container(width: 600,
                          decoration: const BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1311051864/photo/vegetarian-food-in-string-bag.jpg?s=1024x1024&w=is&k=20&c=6rhRPxj5teqji3esRrxgfTVoJwdaSv8fqvEjt1PiENI=")),
                          )),
                      Container(width: 600,
                          decoration: const BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1128687123/photo/shopping-bag-full-of-fresh-vegetables-and-fruits.jpg?s=1024x1024&w=is&k=20&c=ZP6MR_8ca51_wrOQFjp5HN0cK1TwmMHMc8sRZy9Dxn4=")),
                          )),
                      Container(width: 600,
                          decoration: const BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/606211940/photo/fresh-vegetables-in-rajasthan-india-market.jpg?s=1024x1024&w=is&k=20&c=BbDFGk73GrTCvFSYALk1f-8wYo1ek4ERPc4Ah7kyC0A=")),
                          )),
                      Container(width: 600,
                          decoration: const BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fitHeight,
                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1152750103/photo/sliced-alphonso-mangoes.jpg?s=1024x1024&w=is&k=20&c=icvyeqMLlk1M7sv4Vpjtn1qnXzbcNmvfUpJgjWOfI7I=")),
                          )),
                      Container(width: 600,
                          decoration: const BoxDecoration(
                            image: DecorationImage(fit: BoxFit.fitHeight,

                                image: NetworkImage(
                                    "https://media.istockphoto.com/id/1452512268/photo/withania-somnifera-or-ashwagandha-leaves-and-red-fruit-berries-on-wooden-background-winter.jpg?s=1024x1024&w=is&k=20&c=EuRqkhq1uJ_m8cZ0wp8pk-BOpX5-tCbZMZIGS0zzA3U=")),
                          )),
                    ], options: CarouselOptions(
                        height: 200,
                        //aspectRatio: 16/9,
                        viewportFraction: .6,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        enlargeCenterPage: true,
                        enlargeFactor: .3,
                        scrollDirection: Axis.horizontal

                    )),

                    // Image.asset(
                    //   'assets/img_34.png',
                    //   fit: BoxFit.fill,
                    // ),
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
