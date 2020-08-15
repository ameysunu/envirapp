import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#009FD3"),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#FFE4DF'),
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
                          "Water Calculator",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Hexcolor('#009FD3'),
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "We only calculate footprint in bathrooms and toilets for now.",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 15,
                        color: Colors.white60),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Hexcolor('#FF8981'),
                        child: SizedBox(
                            width: 56,
                            height: 56,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 30,
                          color: Hexcolor('#2F4858'),
                        ),
                      ),
                    ),
                    ClipOval(
                      child: Material(
                        color: Hexcolor('#FF8981'),
                        child: InkWell(
                          splashColor: Hexcolor('#FFE9D0'),
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                          onTap: () {
                            incrementCounter();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
