
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

  body: Container(
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
                                "₹218",
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
              ),



            ]
        )
    ),

  )



);
  }
}