import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialApp(
        home: Container(
          child: Text("hello"),
        ),
      ),
    );
  }
}
