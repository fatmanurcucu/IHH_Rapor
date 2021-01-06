import 'package:flutter/material.dart';

class Birims extends StatelessWidget {
  final String birim;

  const Birims({Key key, this.birim}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.green,
      child: Container(
        height:120.0,
        color:Colors.white70,
        margin: EdgeInsets.fromLTRB(1.0, 22.0, 1.0, 1.0),
        child: Center(
          child: Text(
            birim,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ); // MaterialApp
  }
}