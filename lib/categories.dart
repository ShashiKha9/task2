import 'package:flutter/material.dart';

class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  
      Container(
      height: 300,
      child:   GridView.count(crossAxisCount: 2,
          children: List.generate(4, (index){
            return Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 100,
              width: 100,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                      side:BorderSide(color: Colors.deepOrangeAccent)
                  ),


                  color: Colors.white,
                  child: Row(

                    children: [
                      Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3dQX2K2cBjXuNIMYl0MHjZA-Krz1etmrniw&usqp=CAU"),height: 40,width: 50,),
                      Text("Up to 70% off",style: TextStyle(fontSize: 6),),
                      Text("Up to 70% off",style: TextStyle(fontSize: 6),)

                    ],
                  )


              ),
            );

          }




          )

      )


  );


  }
}