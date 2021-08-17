import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:task2/card.dart';



void main(){
  runApp(MaterialApp(home : HomePage()));

}

class HomePage extends StatelessWidget {
  get actions => null;



  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
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
              IconButton(icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () => print("open cart"),),
            ],


          ), //

         body: Container(
           child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100.0,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: new List.generate(10, (int index) {
                         
                           return Card(
                             child : Container(
                               child: Column(
                             children: [
                               Image(image: NetworkImage("https://www.kindpng.com/picc/m/160-1606870_personal-care-products-png-transparent-png.png"),
                               height:60 ,width: 80,),
                               Text("Personal",textAlign: TextAlign.justify,),

                             ],
                               
                               


                                ),


                                //


                              )


                          );
                               
                            } )
                          )


                          //

                        
                        ),
               SizedBox(
                   height: 60,
                   width: 80,

                   ),  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new Text("Top Saver",style: TextStyle(fontSize: 17),),
                          RaisedButton(child: Text("See all",style: TextStyle(fontWeight: FontWeight.w400),),
                            onPressed: (){

                            },
                            color: Colors.white,
                            elevation: 10,


                          )
                        ],
                      ),
                    ),



                    
                    //
                    
                    Container(
                      height: 200.0,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: new List.generate(10, (int index) {
                          return Card(
                              child : Container(
                                alignment: Alignment.bottomCenter,
                                height: 100,
                                width: 120,
                                child: Column(
                                  children: [
                                    Image(image: NetworkImage("https://www.lovelybakestudio.com/wp-content/uploads/2019/12/product_biscuits_2-600x600.png"),
                                      height:80 ,width: 100,),
                                    Text("₹150",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Test Product",textAlign: TextAlign.justify,),
                                    SizedBox(
                                      height: 10,
                                      width: 10,

                                    ),
                                    

                                    Text("2kg",textAlign: TextAlign.left,),
                                    RaisedButton(child: Text("Add",style: TextStyle(color: Colors.white),),
                                    color: Colors.teal,
                                    onPressed: (){
                                      

                                    },
                                    )
                                    

                                    

                                  ],




                                ),


                                //


                              )







                            //


                              );






                          //

                        }
                        ),


                      ), //


                      //


                    ),
                    SizedBox(
                      height: 60,
                      width: 80,

                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new Text("Today's Combo",style: TextStyle(fontSize: 17),),
                         RaisedButton(child: Text("See all",style: TextStyle(fontWeight: FontWeight.w400),),
                         onPressed: (){

                         },
                           color: Colors.white,
                           elevation: 10,


                         )
                        ],
                      ),
                    ),
                    
                    
                    Container(
                      height: 200.0,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: new ListView(
                        scrollDirection: Axis.horizontal,
                        children: new List.generate(10, (int index) {
                          return Card(
                              child : Container(
                                alignment: Alignment.bottomCenter,
                                height: 100,
                                width: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image(image: NetworkImage("https://www.pngitem.com/pimgs/m/384-3841893_makeup-products-png-beauty-product-image-png-transparent.png"),
                                      height:80 ,width: 100,),
                                    Text("₹720",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Test Product",textAlign: TextAlign.justify,),

                                    SizedBox(
                                      height: 10,
                                      width: 10,

                                    ),


                                    Text("1kg",textAlign: TextAlign.left,),
                                    RaisedButton(child: Text("Add",style: TextStyle(color: Colors.white),),
                                      color: Colors.teal,
                                      onPressed: (){


                                      },
                                    )




                                  ],




                                ),


                                //


                              )







                            //


                          );






                          //

                        }
                        ),


                      ), //


                      //


                    ),



                  ]
              )

          ),
         ),





        );
}
}

















