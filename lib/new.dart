import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: New()));
}


class New extends StatefulWidget{


  @override
  NewState  createState()=> NewState();
}

class NewState extends State<New>{
  int i;
  String MyItem;
  @override
  Widget build(BuildContext context) {
    return
   Scrollbar(
     isAlwaysShown: true,
     child: ListView.builder(itemCount: 10,
         itemBuilder: (context,index)=>MyItem(i)),





    );
  }
  
}
