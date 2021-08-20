
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white,
  actions: [
    Icon(Icons.location_on_outlined,color: Colors.red,),

  ],

  ),
  body: Column(
    children: [
      ListTile(
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(14.0),
          side: BorderSide(color: Colors.black)
        ),


        leading: Icon(Icons.search),
        title: Text("Search products & categories"),

      ),
      Container(
        margin: EdgeInsets.all(14),
        child: Row(
          children: [
            Text("Welcome!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
          ],
        ),
      )
      
    ],
  ),
);
  }
}