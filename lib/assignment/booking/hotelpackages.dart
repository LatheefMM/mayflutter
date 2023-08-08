import 'package:flutter/material.dart';


class hotie extends StatelessWidget {
  final int index;

  var names = [
    "Crown Plaza",
    "HolidayInn",
    "Marriot",
    "Le Meridian",
    "Taj",

  ];
  var images = [
 'assets/crownplaza2.png',
    'assets/airlinkcastle.png',
    'assets/dewland.png',
    'assets/lemeridian.png',
    'assets/marriot.png',

  ];

  hotie({ required this.index});

  @override
  Widget build(BuildContext context) =>
      Stack(
          children: [Row
            (children: [
            Container(
              margin: EdgeInsets.all(3),
              width: 130,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)),
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),),

            Container(

                height: 80,
                child: Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(names[index], style: Theme
                          .of(context)
                          .textTheme
                          .displayMedium)),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("A Five star hotel", style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium)),
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text("\$180/night", style: Theme
                        .of(context)
                        .textTheme
                        .bodySmall),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.car_rental, color: Colors.blue,),
                      Icon(Icons.bed_sharp, color: Colors.blue),
                      Icon(Icons.no_drinks_outlined, color: Colors.blue,),
                      Icon(Icons.wifi, color: Colors.blue,),

                    ],
                  )
                ])),


          ],),

            Padding(
              padding: const EdgeInsets.fromLTRB(260, 40, 0, 90),
              child: Container(
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("book now"))),
            )
          ]);
}

