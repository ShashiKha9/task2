import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:task2/card.dart';
import 'card.dart';

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

        body:   Container(

            child: IntrinsicWidth(
                child : Column(
                    children: [
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width,
                        child: new ListView(
                          scrollDirection: Axis.horizontal,
                          children: new List.generate(10, (int index) {
                            return Card(
                              color: Colors.blue,
                              child: new Container(
                                width: 120.0,
                                height: 100.0,









                              ),

                            );
                          }),
                        ),

                      )
                    ]


/*
        child: Row(
          children: [
            Flexible(child: CustomScrollView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              slivers: [
              SliverPadding(padding: EdgeInsets.all(20),
              sliver: SliverList(
                  delegate: SliverChildListDelegate(
                   <Widget> [
                     Image(image: NetworkImage("https://www.pngkit.com/png/full/18-184983_fresh-vegetables-png-clipart-transparent-download-vegetables-png.png"),
                     height: 50,width:60 ,alignment: Alignment.topCenter,
                     ),
                     SizedBox(
                       height: 40,
                       width: 40,

                     ),
                     Image(image: NetworkImage("https://www.kindpng.com/picc/m/160-1606870_personal-care-products-png-transparent-png.png"),
                       height: 50,width:60 ,alignment: Alignment.topCenter,
                     ),
                     SizedBox(
                       height: 40,
                       width: 40,

                     ),
                     Image(image: NetworkImage("https://www.seekpng.com/png/detail/31-315722_product-image-parle-g-biscuit-25-gm.png"),
                       height: 60,width:80 ,alignment: Alignment.topCenter,
                     ),
                     SizedBox(
                       height: 40,
                       width: 40,

                     ),
                     Image(image: NetworkImage("https://p.kindpng.com/picc/s/3-35195_transparent-drink-png-cold-drink-images-png-png.png"),
                       height: 50,width:60 ,alignment: Alignment.topCenter,
                     ),



                   ],
                  ),


              ),
              ),

              ],
            ))
          ],

        ),
*/


                )
            ),




        )
    );




  }

}












