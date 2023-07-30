
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mayflutter/assignment/productlist.dart';
import 'package:mayflutter/loginpage.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: onboardings(),));
}

class onboardings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
          fontSize: 30,
          fontWeight: FontWeight.bold,),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.pink),
        imagePadding: EdgeInsets.all(20),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.blue,
              Colors.deepOrange,
              Colors.red,
            ], begin: Alignment.topRight, end: Alignment.bottomLeft
            )
        )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
            decoration: pageDecoration,
            image: Align(
              alignment: Alignment.center,
              child: Image.asset('assets/banana.png'),
            ),
            title: 'First page',
            body: 'awsedfgh rdtfgh etfhgb jgfsdjmb cdb cgfdhjdfc bdstgjcvdfdhk bgssdhgj hv hgj'
        ),
        PageViewModel(image: Align(
          alignment: Alignment.center,
          child: Image.asset('assets/grapes.png'),
        ),
            title: 'Second page',
            body: 'awsedfgh rdtfgh etfhgb jgfsdjmb cdb cgfdhjdfc bdstgjcvdfdhk bgssdhgj hv hgj'
        ),
        PageViewModel(image: Align(
          alignment: Alignment.center,
          child: Image.asset('assets/img_27.png'),
        ),
            title: 'Third page',
            body: 'awsedfgh rdtfgh etfhgb jgfsdjmb cdb cgfdhjdfc bdstgjcvdfdhk bgssdhgj hv hgj'
        ),
        PageViewModel(image: Align(
          alignment: Alignment.center,
          child: Image.asset('assets/pineapple.png'),
        ),
            title: 'Fourth page',
            body: 'awsedfgh rdtfgh etfhgb jgfsdjmb cdb cgfdhjdfc bdstgjcvdfdhk bgssdhgj hv hgj'
        )
      ],
      onDone: () =>
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage())),
      onSkip: () =>
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => prod())),
      showSkipButton: true,
      skip: Text('Skip'),
      next: Text('Next'),
      done: Text('Continue'),
      dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          activeSize: Size(25, 10),
          activeColor: Colors.red,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))
          )
      ),

    );
  }
}