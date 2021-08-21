import 'package:flutter/material.dart';

class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      margin: EdgeInsets.all(20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new Text(
              "Shop by Category",
              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),
            ),

           

          ]
          
         
      ),
    
    
  ),





  );

  }
}