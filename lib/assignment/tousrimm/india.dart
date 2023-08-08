import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: ind(),));
}


class ind extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/india.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(child: Text('India',style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold),),
              alignment: Alignment.topLeft,),
          ),
          Text('India, a European country with a long Mediterranean coastline, '
              'has left a powerful mark on Western culture and cuisine. '
              'Its capital, Rome, is home to the Vatican as well as '
              'landmark art and ancient ruins. Other major cities include'
              ' Florence, with Renaissance masterpieces such as Michelangelo’s '
              '"David" and Brunelleschis Duomo '
              'Venice the city of canals and Milan Italy’s fashion capital.'
              'Mountain ranges higher than 2,300 feet (702 metres) occupy '
              'more than one-third of Italy. There are two mountain systems'
              ': the scenic Alps, parts of which lie within the neighbouring'
              ' countries of France, Switzerland, Austria, and Slovenia; and'
              ' the Apennines, which form the spine of the entire peninsula'
              ' and of the island of Sicily. A third mountain system exists '
              'on the two large islands to the west, Italian Sardinia and '
              'French Corsica.The Alps run in a broad west-to-east arc from '
              'the Cadibona Pass, near Savona on the Gulf of Genoa, to north of '
              'Trieste, at the head of the Adriatic Sea. The section properly '
              ' rocks, dating from the Carboniferous '
              'and cjchjgfgfj djhfd sdjf sdjhfd xjgfkgrkhekg '),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              child: Text('Place to visit',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18),),
              alignment: Alignment.topLeft,
            ),
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset('assets/italy2.png',
                    width: 90,height: 70,),
                  borderRadius: BorderRadius.circular(30),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(child: Image.asset('assets/italy3.png',width: 90,height: 70,),
                    borderRadius: BorderRadius.circular(30),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(child: Image.asset('assets/italy4.png',width: 90,height: 70,),
                    borderRadius: BorderRadius.circular(30),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(child: Image.asset('assets/italy5.png',width: 90,height: 70,),
                    borderRadius: BorderRadius.circular(30),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(child: Image.asset('assets/kochi.png',width: 90,height: 70,),
                    borderRadius: BorderRadius.circular(30),),
                ),
              ],
            ),
          ),
          Card(
            child: ClipRRect(borderRadius: BorderRadius.circular(25),
              child: ElevatedButton(
                onPressed: () {  },
                child: Container(color: Colors.blueAccent,height: 30,width: 390,
                  child: Center(
                    child: Text('Press to Explore',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ),
          )
        ],

      ),
    );
  }

}