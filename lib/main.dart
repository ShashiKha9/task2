import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main(){
  runApp(MaterialApp(home :HomePage()));

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

   toolbarHeight: 100,
        backgroundColor: Colors.black,


        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text("Login/Sign Up",
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.right,

            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Search for products",
                labelStyle: TextStyle(
                  color: Colors.white
                )



              ),
            )

         
            

          ],

          
          

        ),


        actions: [
          IconButton( icon:Icon(Icons.shopping_cart_outlined),
          onPressed: ()=>print("open cart"),),
        ],







      ),





      
    );

       

        }

}












