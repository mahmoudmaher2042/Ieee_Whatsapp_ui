import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled1/login_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Start(),
    debugShowCheckedModeBanner: false,
  ));
}

class Start extends StatefulWidget {
  const Start({Key key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(pages: [
      PageViewModel(
      image: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset("assets/img/what.jpg",scale: 5,),
        ),
      ),
      title: "HELLO ON WHATSAPP"
        ,bodyWidget: Container(child: Column(
        children: [Text("this is a ui design for whatsapp",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),)],
      ),),
    ),
      PageViewModel(bodyWidget: Container(child: Column(
        children: [Text("this program made by flutter team in ieee where we are a family not a team ",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),)],
      ),),
          image: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/img/what.jpg",scale: 5,),
            ),
          ),
          title: "HELLO !"

      ),
      PageViewModel(
          image: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/img/what.jpg",scale: 5,),
            ),
          ),
          title: "HELLO ON WHATSAPP"
          ,bodyWidget: Container(child: Column(
        children: [Text("lets start ! ",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
        ),)],
      ),),
      ),
    ], onDone:(){
      Navigator.of(context).push(MaterialPageRoute(builder: (v){
        return Login();
      }));
    }, done: Container(decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(85),
      color: Colors.teal.shade500,

    ),child: Center(child: Text("done ",style: TextStyle(fontSize: 18),)))
    ,skip: Container(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(85),
        color: Colors.teal.shade500,

      ),child: Center(child: Text("skip",style: TextStyle(fontSize: 18),))),
    animationDuration: 2,
    showNextButton: false,
    showSkipButton: true,dotsDecorator: DotsDecorator(size:Size.square(2),activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),dotsFlex: 2,);
  }
}
