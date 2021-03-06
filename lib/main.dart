import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task2/categories.dart';
import 'package:task2/onBoard%20Screens.dart';
import 'HomeScreen.dart';

void main() {
  runApp(MaterialApp(home: HomePage1()));
}

class HomePage extends StatelessWidget {
  get actions => null;

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
            Text(
              "Login/Sign Up",
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.right,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Search for products",
                  labelStyle: TextStyle(color: Colors.white)),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () => print("open cart"),
          ),
        ],
      ), //

      body: Container(
        child: SingleChildScrollView(
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                            child: Container(
                              child: Column(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        "https://www.kindpng.com/picc/m/160-1606870_personal-care-products-png-transparent-png.png"),
                                    height: 60,
                                    width: 80,
                                  ),
                                  Text(
                                    "Personal",
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),

                              //
                            ));
                      }))

                //

              ),
              Divider(
                height: 6,
                thickness: 6,

              ),

              CarouselSlider(
                items: [
                Container(
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuC7m0FgVRilcrHN3DdsCz_nU-E_fxbiIf0Q&usqp=CAU"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: 120.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 18 / 12,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              Divider(
                height: 6,
                thickness: 6,

              ),
              //
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text(
                      "Top Saver",
                      style: TextStyle(fontSize: 17),
                    ),
                    TextButton(

                      child: Text("see all",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(6)),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide(color: Colors.black)))),
                      onPressed: () => null,


                    ),

                  ],
                ),
                padding: EdgeInsets.all(10),
              ),

              //

              Container(
                height: 200.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                  child: Scrollbar(
                    isAlwaysShown: true,
                    thickness: 4.0,
                    controller: ScrollController(),
                    radius: Radius.zero,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: new List.generate(10, (int index) {
                    return Card(
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          height: 100,
                          width: 120,
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    "https://www.lovelybakestudio.com/wp-content/uploads/2019/12/product_biscuits_2-600x600.png"),
                                height: 80,
                                width: 100,
                              ),
                              Text(
                                "???150",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Test Product",
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: 10,
                                width: 10,
                              ),
                              Text(
                                "2kg",
                                textAlign: TextAlign.left,
                              ),
                              RaisedButton(
                                child: Text(
                                  "Add",
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: Colors.teal,
                                onPressed: () {},
                              ),


                            ],
                          ),

                          //
                        )

                      //

                    );

                    //
                  }),
                ),
                  )//

                //
              ),
              Divider(
                height: 6,
                thickness: 6,

              ),

              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://bharatiya.co/wp-content/uploads/2021/06/DairyAndBakery_900x250-1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: 120.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 18 / 12,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              Divider(
                height: 6,
                thickness: 6,

              ),

              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text(
                      "Today's Combos",
                      style: TextStyle(fontSize: 17),
                    ),
                    TextButton(
                      child: Text("see all",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(6)),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide(color: Colors.black)))),
                      onPressed: () => null,


                    ),


                  ],

                ),
                padding: EdgeInsets.all(10),
              ),

              Container(
                height: 200.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                  child: Scrollbar(
                    isAlwaysShown: true,
                    thickness: 4.0,
                    controller: ScrollController(),
                    radius: Radius.zero,

                    child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: new List.generate(10, (int index) {
                    return Card(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              image: NetworkImage(
                                  "https://www.pngitem.com/pimgs/m/384-3841893_makeup-products-png-beauty-product-image-png-transparent.png"),
                              height: 80,
                              width: 100,
                            ),
                            Text(
                              "???720",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Test Product",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Text(
                              "1kg",
                              textAlign: TextAlign.left,
                            ),
                            RaisedButton(
                              child: Text(
                                "Add",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.teal,
                              onPressed: () {},
                            )
                          ],
                        ),

                        //
                      ),


                      //

                    );

                    //
                  }),
                ),
                  )//

                //
              ),
              Divider(
                height: 6,
                thickness: 6,

              ),
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://flexfitnessclubs.com/wp-content/uploads/2017/07/protein-pic.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: 120.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 18 / 12,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              Divider(
                height: 6,
                thickness: 6,

              ),
              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Text(
                      "Today'Offers",
                      style: TextStyle(fontSize: 17),
                    ),
                    TextButton(
                      child: Text("see all",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(6)),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide(color: Colors.black)))),
                      onPressed: () => null,


                    ),


                  ],

                ),
                padding: EdgeInsets.all(10),
              ),
              Container(
                height: 200.0,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Scrollbar(
                  isAlwaysShown: true,
                thickness: 4.0,
                controller: ScrollController(),
                radius: Radius.zero,

                child:new ListView(
                  scrollDirection: Axis.horizontal,
                  children: new List.generate(10, (int index) {
                    return Card(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(
                              image: NetworkImage(
                                  "https://userguiding.com/wp-content/uploads/2021/03/product-design-books-creative-selection.png",
                              ),
                              height: 80,
                              width: 100,
                            ),
                            Text(
                              "???218",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Test Product",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Text(
                              "550g",
                              textAlign: TextAlign.left,
                            ),
                            RaisedButton(
                              child: Text(
                                "Add",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.teal,
                              onPressed: () {},
                            ),







                          ],
                        ),

                        //
                      ),



                      //

                    );


                    //
                  }),
                ), //

              ),
              ),
              Divider(
                height: 6,
                thickness: 6,

              ),



            ExpansionTile(title: Text("Up to 40% OFF",style: TextStyle(color: Colors.cyan,fontSize: 15),textAlign: TextAlign.center,),
              tilePadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

              leading: Image(image: NetworkImage("https://i.pinimg.com/736x/a7/64/3e/a7643e981c27aaed1af797d1b7e56eb1.jpg"),),
              subtitle: Column(
                children: [
                  Text("Grocery & Staples",style: TextStyle(fontWeight: FontWeight.bold),),
                  
                  Text("Pulses,Atta and other Floures,Rice and other Grains,Dry fruits and nuts,Edible",style: TextStyle(fontSize:12),textAlign:

                  TextAlign.justify,),

                ],
              ),
              textColor: Colors.black,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Card(
                        child: Row(
                          children: [
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),

                  ],


                ),


            ),
                    Card(
                      child: Row(
                        children: [
                          Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),


                        ],


                      ),


                    ),

                    





                  ]
            ),

                Column(
                  children: [
                    Text("Pulses",style: TextStyle(fontSize: 12),),
                    Text("Up to 60% OFF",style: TextStyle(fontSize: 9),),




                  ],
                ),






              ],

            ),





              ExpansionTile(title: Text("Up to 40% OFF",style: TextStyle(color: Colors.cyan,fontSize: 15),textAlign: TextAlign.center,),
                tilePadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                leading: Image(image: NetworkImage("https://i.pinimg.com/736x/a7/64/3e/a7643e981c27aaed1af797d1b7e56eb1.jpg"),),
                subtitle: Column(
                  children: [
                    Text("Grocery & Staples",style: TextStyle(fontWeight: FontWeight.bold),),

                    Text("Pulses,Atta and other Floures,Rice and other Grains,Dry fruits and nuts,Edible",style: TextStyle(fontSize:12),textAlign:

                    TextAlign.justify,),

                  ],
                ),
                textColor: Colors.black,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(

                        child: Row(
                          children: [
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),

                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),

                          ],


                        ),



                      ),



                    ],


                  ),

                ],











              ),
              Divider(
                height: 4,
                thickness: 4,

              ),


              ExpansionTile(title: Text("Up to 40% OFF",style: TextStyle(color: Colors.cyan,fontSize: 15),textAlign: TextAlign.center,),
                tilePadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                leading: Image(image: NetworkImage("https://i.pinimg.com/736x/a7/64/3e/a7643e981c27aaed1af797d1b7e56eb1.jpg"),),
                subtitle: Column(
                  children: [
                    Text("Grocery & Staples",style: TextStyle(fontWeight: FontWeight.bold),),

                    Text("Pulses,Atta and other Floures,Rice and other Grains,Dry fruits and nuts,Edible",style: TextStyle(fontSize:12),textAlign:

                    TextAlign.justify,),

                  ],
                ),
                textColor: Colors.black,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(

                        child: Row(
                          children: [
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),

                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),

                          ],


                        ),



                      ),



                    ],


                  ),

                ],











              ),
              Divider(
                height: 4,
                thickness: 4,

              ),


              ExpansionTile(title: Text("Up to 40% OFF",style: TextStyle(color: Colors.cyan,fontSize: 15),textAlign: TextAlign.center,),
                tilePadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                leading: Image(image: NetworkImage("https://i.pinimg.com/736x/a7/64/3e/a7643e981c27aaed1af797d1b7e56eb1.jpg"),),
                subtitle: Column(
                  children: [
                    Text("Grocery & Staples",style: TextStyle(fontWeight: FontWeight.bold),),

                    Text("Pulses,Atta and other Floures,Rice and other Grains,Dry fruits and nuts,Edible",style: TextStyle(fontSize:12),textAlign:

                    TextAlign.justify,),

                  ],
                ),
                textColor: Colors.black,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(

                        child: Row(
                          children: [
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),

                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),

                          ],


                        ),



                      ),



                    ],


                  ),

                ],











              ),
              Divider(
                height: 4,
                thickness: 4,

              ),


              //.


              ExpansionTile(title: Text("Up to 40% OFF",style: TextStyle(color: Colors.cyan,fontSize: 15),textAlign: TextAlign.center,),
                tilePadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                leading: Image(image: NetworkImage("https://i.pinimg.com/736x/a7/64/3e/a7643e981c27aaed1af797d1b7e56eb1.jpg"),),
                subtitle: Column(
                  children: [
                    Text("Grocery & Staples",style: TextStyle(fontWeight: FontWeight.bold),),

                    Text("Pulses,Atta and other Floures,Rice and other Grains,Dry fruits and nuts,Edible",style: TextStyle(fontSize:12),textAlign:

                    TextAlign.justify,),

                  ],
                ),
                textColor: Colors.black,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(


                        child: Row(
                          children: [
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,



                            ),

                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),

                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),

                          ],


                        ),



                      ),



                    ],


                  ),

                ],











              ),
              Divider(
                height: 4,
                thickness: 4,

              ),

              ExpansionTile(title: Text("Up to 40% OFF",style: TextStyle(color: Colors.cyan,fontSize: 15),textAlign: TextAlign.center,),
                tilePadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),

                leading: Image(image: NetworkImage("https://i.pinimg.com/736x/a7/64/3e/a7643e981c27aaed1af797d1b7e56eb1.jpg"),),
                subtitle: Column(
                  children: [
                    Text("Grocery & Staples",style: TextStyle(fontWeight: FontWeight.bold),),

                    Text("Pulses,Atta and other Floures,Rice and other Grains,Dry fruits and nuts,Edible",style: TextStyle(fontSize:12),textAlign:

                    TextAlign.justify,),

                  ],
                ),
                textColor: Colors.black,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(

                        child: Row(
                          children: [
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),
                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),
                            SizedBox(
                              height: 10,
                              width: 10,


                            ),
                            Divider(
                              height: 5,
                              thickness: 5,
                            ),

                            Image(image: NetworkImage("https://freepikpsd.com/media/2019/10/pulses-png-3.png"),height: 60,width: 60,),

                          ],


                        ),



                      ),



                    ],


                  ),

                ],











              ),
              Divider(
                height: 4,
                thickness: 4,

              ),







            ])),

      

    )
    );
  }

}