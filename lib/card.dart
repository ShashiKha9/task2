import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:collection';


class App extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return new Scaffold(
    body: new Center(
      child: new ListView(
        children: <Widget>[
          new Container(
            height: 200.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: new List.generate(10, (int index) {
                return new Card(
                  color: Colors.white,
                  child: new Container(
                    width: 120.0,
                    height: 400.0,






                  ),
                );
              }),
            ),
          ),
        ],
      ),
    ),

  );

}
}