import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: New()));
}


class New extends StatefulWidget{


  @override
  NewState  createState()=> NewState();
}

class NewState extends State<New>{

  @override
  Widget build(BuildContext context) {
    return
   Scrollbar(
     isAlwaysShown: true,
     child: ListView.builder(itemCount: 100,itemExtent: 100,
itemBuilder: (context,index){
       return Container(
         padding: EdgeInsets.all(8),
         child: Material(
           elevation: 4.0,
           borderRadius: BorderRadius.circular(4.0),
           color: Colors.green[index%9*100],
           child: Center(
             child: Text(index.toString()),
           ),

         ),

       );
}
     )








    );
  }
  
}
