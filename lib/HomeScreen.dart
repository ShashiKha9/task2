

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:task2/categories.dart';

class HomePage1 extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<HomePage1>{
  int pageindex = 0;
  List pageList =  [

  ];

  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {

      _currentIndex = index;

      onTabTapped(value) {
        setState(() {
          pageindex= value;
        });
      }

    });
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(


  appBar: AppBar(
    backgroundColor: Colors.white,
  actions: [
    Icon(Icons.location_on_outlined,color: Colors.red,textDirection: TextDirection.ltr,),


  ],


  ),
  bottomNavigationBar: BottomNavigationBar(
    currentIndex:pageindex,
      selectedItemColor: Colors.deepOrangeAccent,
      unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    onTap: onTabTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.category_outlined,),label: "Categories"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label: "Cart"),
        BottomNavigationBarItem(icon: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 16,
          backgroundImage: NetworkImage("https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG.png"),
        ),label: "User"),


      ],
  ),
   body:
    Container(
      child: SingleChildScrollView(
      child:  Column(
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
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),

              Row(
                children: [
                  Card(
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 110,
                          decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius: BorderRadius.circular(12)),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 110,
                          decoration: BoxDecoration(color: Colors.lightGreenAccent,borderRadius: BorderRadius.circular(12)),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 110,
                          decoration: BoxDecoration(color: Colors.lightBlueAccent,borderRadius: BorderRadius.circular(12)),
                        )
                      ],
                    ),
                  ),

                ],
              ), Container(
                color: Colors.yellow,

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
                color: Colors.yellow,
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
                                image: AssetImage("images/SeekPng.com_grocery-png_847327.png"),
                                height: 80,
                                width: 100,
                              ),
                              Text(
                                "₹1200",
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
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11)
                                ),
                                child: Text(
                                  "Add",
                                  style: TextStyle(color: Colors.white),
                                ),
                                color: Colors.orangeAccent,
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
              ),  Container(
    margin: EdgeInsets.all(10),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new Text(
            "Shop by Category",
            style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),
          ),

]
    )
),
            Categories(),

            ]
        )
    ),






    )
);
  }
}