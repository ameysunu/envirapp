import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Water extends StatefulWidget {
  @override
  _WaterState createState() => _WaterState();
}

class _WaterState extends State<Water> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#FFE9D0"),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#446970'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          "Water",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Hexcolor('#FFFFFF'),
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Conserving water is important because it keeps water pure and clean while protecting the environment. Conserving water means using our water supply wisely and be responsible. As every individual depends on water for livelihood, we must learn how to keep our limited supply of water pure and away from pollution.",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Hexcolor('#446970'),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
