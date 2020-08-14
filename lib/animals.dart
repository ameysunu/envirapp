import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#FF6B69"),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  child: Text(
                    "Animals",
                    style: TextStyle(
                        color: Hexcolor("#FFFFFF"),
                        fontFamily: 'OpenSans',
                        fontSize: 35.0),
                  ),
                ),
              ),
              Card(
                color: Hexcolor('#C35CAF'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                    bottom: Radius.circular(25.0),
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: SizedBox(
                  height: 340.0,
                  width: double.infinity,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset("images/animals.png"),
                              ),
                            ),
                            Text(
                              "Helluuu, I'm a tiger! We are getting\nextinct with time. Save our families!",
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 15,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Text(
                            'Over the last century, tiger habitats have fallen by around 95 percent, and there are now fewer than 4,000 tigers alive in the wild, reports the World Wildlife Federation (WWF). Of the nine subspecies of tiger, three are already extinct; and the rest are considered endangered.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            'Source: Reader\'s digest.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontStyle: FontStyle.italic,
                                fontSize: 13.0,
                                color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
