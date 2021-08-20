
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class Screen extends StatefulWidget{
  @override
  ScreenState createState()=> ScreenState();
}
class ScreenState extends State<Screen>{
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
return Scaffold(

  bottomNavigationBar:BottomAppBar(
    child: TextButton( child: Text("Next"),
    onPressed: (){
      pageController.animateToPage(1, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
    },
    ),


  ),
  





  body: PageView(
    controller: pageController,
    pageSnapping: false,
    children: [
      Card(
        margin: EdgeInsets.symmetric(horizontal: 60,vertical: 190),
color: Colors.grey,
        elevation: 20,
        ),
      Card(
        margin: EdgeInsets.symmetric(horizontal: 60,vertical: 190),
        color: Colors.red,
        elevation: 20,
      ),
      Card(
        margin: EdgeInsets.symmetric(horizontal: 60,vertical: 190),
        color: Colors.red,
        elevation: 20,
      ),
    ],

  ),

);

  }
}

